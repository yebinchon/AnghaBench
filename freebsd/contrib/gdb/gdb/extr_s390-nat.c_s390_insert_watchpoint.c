
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watch_area {struct watch_area* next; void* hi_addr; void* lo_addr; } ;
typedef void* CORE_ADDR ;


 int s390_fix_watch_points () ;
 struct watch_area* watch_base ;
 struct watch_area* xmalloc (int) ;

int
s390_insert_watchpoint (CORE_ADDR addr, int len)
{
  struct watch_area *area = xmalloc (sizeof (struct watch_area));
  if (!area)
    return -1;

  area->lo_addr = addr;
  area->hi_addr = addr + len - 1;

  area->next = watch_base;
  watch_base = area;

  s390_fix_watch_points ();
  return 0;
}
