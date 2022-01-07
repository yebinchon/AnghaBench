
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kthr {struct kthr* next; } ;



struct kthr *
kgdb_thr_next(struct kthr *kt)
{
 return (kt->next);
}
