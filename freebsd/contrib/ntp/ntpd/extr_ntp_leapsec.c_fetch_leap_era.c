
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vint64 ;
struct TYPE_7__ {int size; int base_tai; } ;
struct TYPE_9__ {TYPE_2__* info; TYPE_1__ head; } ;
typedef TYPE_3__ leap_table_t ;
struct TYPE_10__ {int ttime; int taiof; int ebase; } ;
typedef TYPE_4__ leap_era_t ;
struct TYPE_8__ {int ttime; int taiof; } ;


 int memset (int *,int,int) ;
 scalar_t__ ucmpv64 (int const*,int *) ;

__attribute__((used)) static void
fetch_leap_era(
 leap_era_t * into,
 const leap_table_t * pt ,
 const vint64 * ts )
{
 int idx;


 for (idx = 0; idx != pt->head.size; idx++)
  if (ucmpv64(ts, &pt->info[idx].ttime) >= 0)
   break;

 if (idx >= pt->head.size) {
  memset(&into->ebase, 0x00, sizeof(vint64));
  into->taiof = pt->head.base_tai;
 } else {
  into->ebase = pt->info[idx].ttime;
  into->taiof = pt->info[idx].taiof;
 }
 if (--idx >= 0)
  into->ttime = pt->info[idx].ttime;
 else
  memset(&into->ttime, 0xFF, sizeof(vint64));
}
