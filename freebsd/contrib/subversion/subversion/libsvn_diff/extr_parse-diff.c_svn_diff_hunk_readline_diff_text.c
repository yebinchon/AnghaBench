
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {char* data; } ;
typedef TYPE_3__ svn_stringbuf_t ;
typedef int svn_error_t ;
struct TYPE_9__ {scalar_t__ current; scalar_t__ end; } ;
struct TYPE_12__ {TYPE_2__* patch; int apr_file; TYPE_1__ diff_text_range; } ;
typedef TYPE_4__ svn_diff_hunk_t ;
typedef scalar_t__ svn_boolean_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_off_t ;
struct TYPE_10__ {scalar_t__ reverse; } ;


 int APR_SET ;
 scalar_t__ APR_SIZE_MAX ;
 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int svn_io_file_get_offset (scalar_t__*,int ,int *) ;
 int svn_io_file_readline (int ,TYPE_3__**,char const**,scalar_t__*,scalar_t__,int *,int *) ;
 int svn_io_file_seek (int ,int ,scalar_t__*,int *) ;
 TYPE_3__* svn_stringbuf_create_empty (int *) ;

svn_error_t *
svn_diff_hunk_readline_diff_text(svn_diff_hunk_t *hunk,
                                 svn_stringbuf_t **stringbuf,
                                 const char **eol,
                                 svn_boolean_t *eof,
                                 apr_pool_t *result_pool,
                                 apr_pool_t *scratch_pool)
{
  svn_stringbuf_t *line;
  apr_size_t max_len;
  apr_off_t pos;
  const char *eol_p;

  if (!eol)
    eol = &eol_p;

  if (hunk->diff_text_range.current >= hunk->diff_text_range.end)
    {

      *eof = TRUE;
      *eol = ((void*)0);
      *stringbuf = svn_stringbuf_create_empty(result_pool);
      return SVN_NO_ERROR;
    }

  SVN_ERR(svn_io_file_get_offset(&pos, hunk->apr_file, scratch_pool));
  SVN_ERR(svn_io_file_seek(hunk->apr_file, APR_SET,
                           &hunk->diff_text_range.current, scratch_pool));
  max_len = hunk->diff_text_range.end - hunk->diff_text_range.current;
  SVN_ERR(svn_io_file_readline(hunk->apr_file, &line, eol, eof, max_len,
                               result_pool,
                   scratch_pool));
  SVN_ERR(svn_io_file_get_offset(&hunk->diff_text_range.current,
                                 hunk->apr_file, scratch_pool));

  if (*eof && !*eol && *line->data)
    {






      if (eol != &eol_p)
        {

          apr_off_t start = 0;
          svn_stringbuf_t *str;

          SVN_ERR(svn_io_file_seek(hunk->apr_file, APR_SET, &start,
                                   scratch_pool));

          SVN_ERR(svn_io_file_readline(hunk->apr_file, &str, eol, ((void*)0),
                                       APR_SIZE_MAX,
                                       scratch_pool, scratch_pool));


          SVN_ERR_ASSERT(*eol != ((void*)0));
        }

      *eof = FALSE;


    }

  SVN_ERR(svn_io_file_seek(hunk->apr_file, APR_SET, &pos, scratch_pool));

  if (hunk->patch->reverse)
    {
      if (line->data[0] == '+')
        line->data[0] = '-';
      else if (line->data[0] == '-')
        line->data[0] = '+';
    }

  *stringbuf = line;

  return SVN_NO_ERROR;
}
