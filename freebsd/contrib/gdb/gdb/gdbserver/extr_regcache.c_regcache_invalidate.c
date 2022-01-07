
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int all_threads ;
 int for_each_inferior (int *,int ) ;
 int regcache_invalidate_one ;

void
regcache_invalidate ()
{
  for_each_inferior (&all_threads, regcache_invalidate_one);
}
