
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ lo; } ;
struct TYPE_17__ {TYPE_3__ D_s; } ;
typedef TYPE_4__ vint64 ;
struct calendar {int monthday; int month; scalar_t__ second; scalar_t__ minute; scalar_t__ hour; } ;
struct TYPE_14__ {scalar_t__ size; } ;
struct TYPE_18__ {TYPE_2__* info; TYPE_1__ head; } ;
typedef TYPE_5__ leap_table_t ;
struct TYPE_19__ {int dynls; scalar_t__ taiof; scalar_t__ stime; TYPE_4__ ttime; } ;
typedef TYPE_6__ leap_info_t ;
typedef scalar_t__ int16_t ;
struct TYPE_15__ {int taiof; int ttime; } ;


 int EINVAL ;
 int ERANGE ;
 int FALSE ;
 int TRUE ;
 int add_range (TYPE_5__*,TYPE_6__*) ;
 int errno ;
 TYPE_4__ ntpcal_date_to_ntp64 (struct calendar*) ;
 int ntpcal_ntp64_to_date (struct calendar*,TYPE_4__ const*) ;
 int ucmpv64 (TYPE_4__ const*,int *) ;

int
leapsec_raw(
 leap_table_t * pt,
 const vint64 * ttime,
 int taiof,
 int dynls)
{
 vint64 starttime;
 struct calendar fts;
 leap_info_t li;







 if (pt->head.size) {
  int cmp = ucmpv64(ttime, &pt->info[0].ttime);
  if (cmp == 0)
   cmp -= (taiof != pt->info[0].taiof);
  if (cmp < 0) {
   errno = ERANGE;
   return FALSE;
  }
  if (cmp == 0)
   return TRUE;
 }

 ntpcal_ntp64_to_date(&fts, ttime);

 if (fts.monthday != 1 || fts.hour || fts.minute || fts.second) {
  errno = EINVAL;
  return FALSE;
 }
 fts.month--;
 starttime = ntpcal_date_to_ntp64(&fts);
 li.ttime = *ttime;
 li.stime = ttime->D_s.lo - starttime.D_s.lo;
 li.taiof = (int16_t)taiof;
 li.dynls = (dynls != 0);
 return add_range(pt, &li);
}
