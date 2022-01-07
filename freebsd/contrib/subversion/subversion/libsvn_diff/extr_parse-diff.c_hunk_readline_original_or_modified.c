
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {char* data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct svn_diff__hunk_range {scalar_t__ current; scalar_t__ end; } ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_off_t ;
typedef int apr_file_t ;


 int APR_SET ;
 scalar_t__ APR_SIZE_MAX ;
 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int svn_io_file_get_offset (scalar_t__*,int *,int *) ;
 int svn_io_file_readline (int *,TYPE_1__**,char const**,int*,scalar_t__,int *,int *) ;
 int svn_io_file_seek (int *,int ,scalar_t__*,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 TYPE_1__* svn_stringbuf_create (char*,int *) ;
 TYPE_1__* svn_stringbuf_create_empty (int *) ;
 TYPE_1__* svn_stringbuf_create_ensure (int ,int *) ;
 TYPE_1__* svn_stringbuf_dup (TYPE_1__*,int *) ;

__attribute__((used)) static svn_error_t *
hunk_readline_original_or_modified(apr_file_t *file,
                                   struct svn_diff__hunk_range *range,
                                   svn_stringbuf_t **stringbuf,
                                   const char **eol,
                                   svn_boolean_t *eof,
                                   char verboten,
                                   svn_boolean_t no_final_eol,
                                   apr_pool_t *result_pool,
                                   apr_pool_t *scratch_pool)
{
  apr_size_t max_len;
  svn_boolean_t filtered;
  apr_off_t pos;
  svn_stringbuf_t *str;
  const char *eol_p;
  apr_pool_t *last_pool;

  if (!eol)
    eol = &eol_p;

  if (range->current >= range->end)
    {

      *eof = TRUE;
      *eol = ((void*)0);
      *stringbuf = svn_stringbuf_create_empty(result_pool);
      return SVN_NO_ERROR;
    }

  SVN_ERR(svn_io_file_get_offset(&pos, file, scratch_pool));
  SVN_ERR(svn_io_file_seek(file, APR_SET, &range->current, scratch_pool));



  last_pool = svn_pool_create(scratch_pool);
  do
    {
      svn_pool_clear(last_pool);

      max_len = range->end - range->current;
      SVN_ERR(svn_io_file_readline(file, &str, eol, eof, max_len,
                                   last_pool, last_pool));
      SVN_ERR(svn_io_file_get_offset(&range->current, file, last_pool));
      filtered = (str->data[0] == verboten || str->data[0] == '\\');
    }
  while (filtered && ! *eof);

  if (filtered)
    {

      *stringbuf = svn_stringbuf_create_ensure(0, result_pool);
      *eol = ((void*)0);
    }
  else if (str->data[0] == '+' || str->data[0] == '-' || str->data[0] == ' ')
    {

      *stringbuf = svn_stringbuf_create(str->data + 1, result_pool);
    }
  else
    {

      *stringbuf = svn_stringbuf_dup(str, result_pool);
    }

  if (!filtered && *eof && !*eol && *str->data)
    {






      if (!no_final_eol && eol != &eol_p)
        {
          apr_off_t start = 0;

          SVN_ERR(svn_io_file_seek(file, APR_SET, &start, scratch_pool));

          SVN_ERR(svn_io_file_readline(file, &str, eol, ((void*)0), APR_SIZE_MAX,
                                       scratch_pool, scratch_pool));


          SVN_ERR_ASSERT(*eol != ((void*)0));
        }

      *eof = FALSE;

    }
  SVN_ERR(svn_io_file_seek(file, APR_SET, &pos, scratch_pool));

  svn_pool_destroy(last_pool);
  return SVN_NO_ERROR;
}
