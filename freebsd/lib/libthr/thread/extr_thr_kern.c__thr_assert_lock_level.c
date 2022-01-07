
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PANIC (char*) ;

void
_thr_assert_lock_level(void)
{
 PANIC("locklevel <= 0");
}
