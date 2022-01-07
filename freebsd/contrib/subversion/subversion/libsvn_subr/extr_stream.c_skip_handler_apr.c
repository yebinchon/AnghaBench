
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct baton_apr {int pool; int file; } ;
typedef int apr_size_t ;
typedef int apr_off_t ;


 int APR_CUR ;
 int * svn_error_trace (int ) ;
 int svn_io_file_seek (int ,int ,int *,int ) ;

__attribute__((used)) static svn_error_t *
skip_handler_apr(void *baton, apr_size_t len)
{
  struct baton_apr *btn = baton;
  apr_off_t offset = len;

  return svn_error_trace(
            svn_io_file_seek(btn->file, APR_CUR, &offset, btn->pool));
}
