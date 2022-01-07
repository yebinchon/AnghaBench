
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct baton_apr {int pool; int file; } ;


 int * svn_error_trace (int ) ;
 int svn_io_file_close (int ,int ) ;

__attribute__((used)) static svn_error_t *
close_handler_apr(void *baton)
{
  struct baton_apr *btn = baton;

  return svn_error_trace(svn_io_file_close(btn->file, btn->pool));
}
