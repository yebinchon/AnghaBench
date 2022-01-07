
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vint64 ;
struct TYPE_6__ {int size; int dynls; scalar_t__ this_tai; scalar_t__ next_tai; int ttime; int dtime; int stime; int ebase; scalar_t__ base_tai; } ;
struct TYPE_7__ {TYPE_2__ head; TYPE_1__* info; } ;
typedef TYPE_3__ leap_table_t ;
struct TYPE_5__ {int stime; int ttime; int dynls; scalar_t__ taiof; } ;


 scalar_t__ _electric ;
 int addv64i32 (int *,scalar_t__) ;
 int memset (int *,int,int) ;
 int subv64u32 (int *,int ) ;
 scalar_t__ ucmpv64 (int const*,int *) ;

__attribute__((used)) static void
reload_limits(
 leap_table_t * pt,
 const vint64 * ts)
{
 int idx;






 for (idx = 0; idx != pt->head.size; idx++)
  if (ucmpv64(ts, &pt->info[idx].ttime) >= 0)
   break;





 if (idx >= pt->head.size) {
  memset(&pt->head.ebase, 0x00, sizeof(vint64));
  pt->head.this_tai = pt->head.base_tai;
 } else {
  pt->head.ebase = pt->info[idx].ttime;
  pt->head.this_tai = pt->info[idx].taiof;
 }
 if (--idx >= 0) {
  pt->head.next_tai = pt->info[idx].taiof;
  pt->head.dynls = pt->info[idx].dynls;
  pt->head.ttime = pt->info[idx].ttime;

  if (_electric)
   pt->head.dtime = pt->head.ttime;
                else
   pt->head.dtime = addv64i32(
    &pt->head.ttime,
    pt->head.next_tai - pt->head.this_tai);

  pt->head.stime = subv64u32(
   &pt->head.ttime, pt->info[idx].stime);

 } else {
  memset(&pt->head.ttime, 0xFF, sizeof(vint64));
  pt->head.stime = pt->head.ttime;
  pt->head.dtime = pt->head.ttime;
  pt->head.next_tai = pt->head.this_tai;
  pt->head.dynls = 0;
 }
}
