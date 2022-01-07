
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {int len; int data; } ;
typedef TYPE_4__ svn_stringbuf_t ;
typedef int svn_patch_t ;
typedef int svn_error_t ;
struct TYPE_14__ {int end; scalar_t__ current; scalar_t__ start; } ;
struct TYPE_13__ {scalar_t__ end; scalar_t__ current; scalar_t__ start; } ;
struct TYPE_12__ {scalar_t__ end; scalar_t__ current; scalar_t__ start; } ;
struct TYPE_16__ {int original_start; int original_length; int modified_start; int modified_length; int apr_file; TYPE_3__ diff_text_range; scalar_t__ trailing_context; scalar_t__ leading_context; void* modified_no_final_eol; TYPE_2__ modified_text_range; void* original_no_final_eol; TYPE_1__ original_text_range; int const* patch; } ;
typedef TYPE_5__ svn_diff_hunk_t ;
typedef size_t svn_boolean_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;


 void* FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 void* TRUE ;
 TYPE_5__* apr_pcalloc (int *,int) ;
 scalar_t__ strlen (char const*) ;
 int svn_io_file_del_on_pool_cleanup ;
 int svn_io_file_write_full (int ,int ,int ,int *,int *) ;
 int svn_io_open_unique_file3 (int *,int *,int *,int ,int *,int *) ;
 int svn_stringbuf_appendbyte (TYPE_4__*,char) ;
 int svn_stringbuf_appendbytes (TYPE_4__*,char const*,scalar_t__ const) ;
 int svn_stringbuf_appendcstr (TYPE_4__*,char*) ;
 TYPE_4__* svn_stringbuf_create_ensure (scalar_t__ const,int *) ;

__attribute__((used)) static svn_error_t *
add_or_delete_single_line(svn_diff_hunk_t **hunk_out,
                          const char *line,
                          const svn_patch_t *patch,
                          svn_boolean_t add,
                          apr_pool_t *result_pool,
                          apr_pool_t *scratch_pool)
{
  svn_diff_hunk_t *hunk = apr_pcalloc(result_pool, sizeof(*hunk));
  static const char *hunk_header[] = { "@@ -1 +0,0 @@\n", "@@ -0,0 +1 @@\n" };
  const apr_size_t header_len = strlen(hunk_header[add]);
  const apr_size_t len = strlen(line);
  const apr_size_t end = header_len + (1 + len);
  svn_stringbuf_t *buf = svn_stringbuf_create_ensure(end + 1, scratch_pool);

  hunk->patch = patch;



  hunk->diff_text_range.start = header_len;
  hunk->diff_text_range.current = header_len;

  if (add)
    {
      hunk->original_text_range.start = 0;
      hunk->original_text_range.current = 0;
      hunk->original_text_range.end = 0;
      hunk->original_no_final_eol = FALSE;

      hunk->modified_text_range.start = header_len;
      hunk->modified_text_range.current = header_len;
      hunk->modified_text_range.end = end;
      hunk->modified_no_final_eol = TRUE;

      hunk->original_start = 0;
      hunk->original_length = 0;

      hunk->modified_start = 1;
      hunk->modified_length = 1;
    }
  else
    {
      hunk->original_text_range.start = header_len;
      hunk->original_text_range.current = header_len;
      hunk->original_text_range.end = end;
      hunk->original_no_final_eol = TRUE;

      hunk->modified_text_range.start = 0;
      hunk->modified_text_range.current = 0;
      hunk->modified_text_range.end = 0;
      hunk->modified_no_final_eol = FALSE;

      hunk->original_start = 1;
      hunk->original_length = 1;

      hunk->modified_start = 0;
      hunk->modified_length = 0;
    }

  hunk->leading_context = 0;
  hunk->trailing_context = 0;



  svn_stringbuf_appendbytes(buf, hunk_header[add], header_len);
  svn_stringbuf_appendbyte(buf, add ? '+' : '-');
  svn_stringbuf_appendbytes(buf, line, len);
  svn_stringbuf_appendbyte(buf, '\n');
  svn_stringbuf_appendcstr(buf, "\\ No newline at end of hunk\n");

  hunk->diff_text_range.end = buf->len;

  SVN_ERR(svn_io_open_unique_file3(&hunk->apr_file, ((void*)0) ,
                                   ((void*)0) ,
                                   svn_io_file_del_on_pool_cleanup,
                                   result_pool, scratch_pool));
  SVN_ERR(svn_io_file_write_full(hunk->apr_file,
                                 buf->data, buf->len,
                                 ((void*)0), scratch_pool));


  *hunk_out = hunk;
  return SVN_NO_ERROR;
}
