
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kthr {uintptr_t kaddr; struct kthr* next; } ;


 struct kthr* first ;

struct kthr *
kgdb_thr_lookup_taddr(uintptr_t taddr)
{
 struct kthr *kt;

 kt = first;
 while (kt != ((void*)0) && kt->kaddr != taddr)
  kt = kt->next;
 return (kt);
}
