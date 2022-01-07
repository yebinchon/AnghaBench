
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ctime_lock ;
 scalar_t__ ctime_r_init ;
 int lock_basic_destroy (int *) ;

__attribute__((used)) static void
ctime_r_cleanup(void)
{
 if(ctime_r_init) {
  ctime_r_init = 0;
  lock_basic_destroy(&ctime_lock);
 }
}
