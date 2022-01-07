
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct baton_apr {int pool; int file; } ;
typedef int apr_size_t ;


 int * svn_error_trace (int *) ;
 int * svn_io_file_putc (char const,int ,int ) ;
 int * svn_io_file_write_full (int ,char const*,int,int*,int ) ;

__attribute__((used)) static svn_error_t *
write_handler_apr(void *baton, const char *data, apr_size_t *len)
{
  struct baton_apr *btn = baton;
  svn_error_t *err;

  if (*len == 1)
    {
      err = svn_io_file_putc(*data, btn->file, btn->pool);
      if (err)
        *len = 0;
    }
  else
    err = svn_io_file_write_full(btn->file, data, *len, len, btn->pool);

  return svn_error_trace(err);
}
