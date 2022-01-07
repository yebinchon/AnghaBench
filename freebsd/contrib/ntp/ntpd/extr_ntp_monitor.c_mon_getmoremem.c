
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef int mon_entry ;


 int * eallocarray (scalar_t__,int) ;
 int mon_free_entry (int *) ;
 scalar_t__ mon_mem_increments ;
 int mru_alloc ;
 scalar_t__ mru_incalloc ;
 scalar_t__ mru_initalloc ;

__attribute__((used)) static void
mon_getmoremem(void)
{
 mon_entry *chunk;
 u_int entries;

 entries = (0 == mon_mem_increments)
        ? mru_initalloc
        : mru_incalloc;

 if (entries) {
  chunk = eallocarray(entries, sizeof(*chunk));
  mru_alloc += entries;
  for (chunk += entries; entries; entries--)
   mon_free_entry(--chunk);

  mon_mem_increments++;
 }
}
