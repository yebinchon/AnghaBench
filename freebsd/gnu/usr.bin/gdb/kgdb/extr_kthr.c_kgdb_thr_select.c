
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kthr {int dummy; } ;


 struct kthr* curkthr ;

struct kthr *
kgdb_thr_select(struct kthr *kt)
{
 struct kthr *pcur;

 pcur = curkthr;
 curkthr = kt;
 return (pcur);
}
