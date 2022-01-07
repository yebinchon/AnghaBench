
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtld_lock {int dummy; } ;


 int busy_places ;
 struct rtld_lock* lock_place ;

__attribute__((used)) static void
_thr_rtld_lock_destroy(void *lock)
{
 int locki;
 size_t i;

 locki = (struct rtld_lock *)lock - &lock_place[0];
 for (i = 0; i < sizeof(struct rtld_lock); ++i)
  ((char *)lock)[i] = 0;
 busy_places &= ~(1 << locki);
}
