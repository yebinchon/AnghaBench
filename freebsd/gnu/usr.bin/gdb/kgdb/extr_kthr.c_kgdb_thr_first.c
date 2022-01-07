
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kthr {int dummy; } ;


 struct kthr* first ;

struct kthr *
kgdb_thr_first(void)
{
 return (first);
}
