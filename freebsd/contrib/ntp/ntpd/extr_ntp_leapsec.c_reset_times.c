
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vint64 ;
struct TYPE_4__ {int ebase; int dtime; int ttime; int stime; } ;
struct TYPE_5__ {TYPE_1__ head; } ;
typedef TYPE_2__ leap_table_t ;


 int memset (int *,int,int) ;

__attribute__((used)) static void
reset_times(
 leap_table_t * pt)
{
 memset(&pt->head.ebase, 0xFF, sizeof(vint64));
 pt->head.stime = pt->head.ebase;
 pt->head.ttime = pt->head.ebase;
 pt->head.dtime = pt->head.ebase;
}
