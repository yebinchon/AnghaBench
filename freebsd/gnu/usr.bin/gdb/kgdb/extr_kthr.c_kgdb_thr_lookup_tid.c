
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kthr {int tid; struct kthr* next; } ;


 struct kthr* first ;

struct kthr *
kgdb_thr_lookup_tid(int tid)
{
 struct kthr *kt;

 kt = first;
 while (kt != ((void*)0) && kt->tid != tid)
  kt = kt->next;
 return (kt);
}
