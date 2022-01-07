
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int svn_boolean_t ;
struct baton_apr {int pool; int file; } ;
typedef int apr_size_t ;


 scalar_t__ APR_STATUS_IS_EOF (int ) ;
 TYPE_1__* SVN_NO_ERROR ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 TYPE_1__* svn_io_file_getc (char*,int ,int ) ;
 TYPE_1__* svn_io_file_read_full2 (int ,char*,int,int*,int *,int ) ;

__attribute__((used)) static svn_error_t *
read_full_handler_apr(void *baton, char *buffer, apr_size_t *len)
{
  struct baton_apr *btn = baton;
  svn_error_t *err;
  svn_boolean_t eof;

  if (*len == 1)
    {
      err = svn_io_file_getc(buffer, btn->file, btn->pool);
      if (err)
        {
          *len = 0;
          if (APR_STATUS_IS_EOF(err->apr_err))
            {
              svn_error_clear(err);
              err = SVN_NO_ERROR;
            }
        }
    }
  else
    err = svn_io_file_read_full2(btn->file, buffer, *len, len,
                                 &eof, btn->pool);

  return svn_error_trace(err);
}
