
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cleanup {int dummy; } ;
typedef int make_cleanup_ftype ;


 struct cleanup* make_my_cleanup (int *,int *,void*) ;
 int run_cleanup_chain ;

struct cleanup *
make_run_cleanup (make_cleanup_ftype *function, void *arg)
{
  return make_my_cleanup (&run_cleanup_chain, function, arg);
}
