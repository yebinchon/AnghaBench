
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ len; int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef scalar_t__ svn_linenum_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_off_t ;
typedef int apr_file_t ;


 int APR_SIZE_MAX ;
 int SVN_ERR (int ) ;
 int SVN_ERR_IO_WRITE_ERROR ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_io_file_readline (int *,TYPE_1__**,char const**,scalar_t__*,int ,int *,int *) ;
 int svn_io_file_write_full (int *,int ,scalar_t__,scalar_t__*,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_stringbuf_appendcstr (TYPE_1__*,char const*) ;

__attribute__((used)) static svn_error_t *
copy_to_merged_file(svn_linenum_t *new_current_line,
                    apr_file_t *merged_file,
                    apr_file_t *source_file,
                    apr_off_t start,
                    apr_off_t len,
                    svn_linenum_t current_line,
                    apr_pool_t *scratch_pool)
{
  apr_pool_t *iterpool;
  svn_stringbuf_t *line;
  apr_size_t lines_read;
  apr_size_t lines_copied;
  svn_boolean_t eof;
  svn_linenum_t orig_current_line = current_line;

  lines_read = 0;
  iterpool = svn_pool_create(scratch_pool);
  while (current_line < start)
    {
      svn_pool_clear(iterpool);

      SVN_ERR(svn_io_file_readline(source_file, &line, ((void*)0), &eof,
                                   APR_SIZE_MAX, iterpool, iterpool));
      if (eof)
        break;

      current_line++;
      lines_read++;
    }

  lines_copied = 0;
  while (lines_copied < len)
    {
      apr_size_t bytes_written;
      const char *eol_str;

      svn_pool_clear(iterpool);

      SVN_ERR(svn_io_file_readline(source_file, &line, &eol_str, &eof,
                                   APR_SIZE_MAX, iterpool, iterpool));
      if (eol_str)
        svn_stringbuf_appendcstr(line, eol_str);
      SVN_ERR(svn_io_file_write_full(merged_file, line->data, line->len,
                                     &bytes_written, iterpool));
      if (bytes_written != line->len)
        return svn_error_create(SVN_ERR_IO_WRITE_ERROR, ((void*)0),
                                _("Could not write data to merged file"));
      if (eof)
        break;
      lines_copied++;
    }
  svn_pool_destroy(iterpool);

  *new_current_line = orig_current_line + lines_read + lines_copied;

  return SVN_NO_ERROR;
}
