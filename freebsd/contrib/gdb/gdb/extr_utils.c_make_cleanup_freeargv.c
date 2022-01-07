
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cleanup {int dummy; } ;


 int cleanup_chain ;
 int do_freeargv ;
 struct cleanup* make_my_cleanup (int *,int ,char**) ;

struct cleanup *
make_cleanup_freeargv (char **arg)
{
  return make_my_cleanup (&cleanup_chain, do_freeargv, arg);
}
