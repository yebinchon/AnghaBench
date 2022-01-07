
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regcache {TYPE_1__* descr; } ;
struct TYPE_2__ {int gdbarch; } ;


 int * current_regcache ;
 int gdb_assert (int ) ;
 int regcache_cpy (struct regcache*,struct regcache*) ;
 struct regcache* regcache_xmalloc (int ) ;

struct regcache *
regcache_dup (struct regcache *src)
{
  struct regcache *newbuf;
  gdb_assert (current_regcache != ((void*)0));
  newbuf = regcache_xmalloc (src->descr->gdbarch);
  regcache_cpy (newbuf, src);
  return newbuf;
}
