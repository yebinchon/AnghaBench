
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cache_novlys ;
 int * cache_ovly_table ;
 scalar_t__ cache_ovly_table_base ;
 int xfree (int *) ;

__attribute__((used)) static void
simple_free_overlay_table (void)
{
  if (cache_ovly_table)
    xfree (cache_ovly_table);
  cache_novlys = 0;
  cache_ovly_table = ((void*)0);
  cache_ovly_table_base = 0;
}
