
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cleanup {int dummy; } ;
typedef int make_cleanup_ftype ;


 int exec_cleanup_chain ;
 struct cleanup* make_my_cleanup (int *,int *,void*) ;

struct cleanup *
make_exec_cleanup (make_cleanup_ftype *function, void *arg)
{
  return make_my_cleanup (&exec_cleanup_chain, function, arg);
}
