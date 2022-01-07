
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cleanup {int dummy; } ;


 int cleanup_chain ;
 struct cleanup* save_my_cleanups (int *) ;

struct cleanup *
save_cleanups (void)
{
  return save_my_cleanups (&cleanup_chain);
}
