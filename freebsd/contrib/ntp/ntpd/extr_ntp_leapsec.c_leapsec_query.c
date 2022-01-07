
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ lo; } ;
struct TYPE_18__ {TYPE_1__ D_s; } ;
typedef TYPE_3__ vint64 ;
typedef scalar_t__ uint32_t ;
typedef int time_t ;
struct TYPE_17__ {int dynls; scalar_t__ this_tai; scalar_t__ next_tai; TYPE_3__ dtime; TYPE_3__ stime; TYPE_3__ ttime; TYPE_3__ ebase; } ;
struct TYPE_19__ {TYPE_2__ head; } ;
typedef TYPE_4__ leap_table_t ;
struct TYPE_20__ {int warped; int proximity; int dynamic; scalar_t__ ddist; scalar_t__ tai_diff; TYPE_3__ ttime; TYPE_3__ ebase; scalar_t__ tai_offs; } ;
typedef TYPE_5__ leap_result_t ;
typedef int int16_t ;


 int FALSE ;
 int LSPROX_ALERT ;
 int LSPROX_ANNOUNCE ;
 int LSPROX_SCHEDULE ;
 scalar_t__ SECSPERDAY ;
 TYPE_3__ addv64i32 (TYPE_3__*,int) ;
 int betweenu32 (scalar_t__,scalar_t__,scalar_t__) ;
 TYPE_4__* leapsec_get_table (int) ;
 int memset (TYPE_5__*,int ,int) ;
 TYPE_3__ ntpcal_ntp_to_ntp (scalar_t__,int const*) ;
 int reload_limits (TYPE_4__*,TYPE_3__*) ;
 scalar_t__ ucmpv64 (TYPE_3__*,TYPE_3__*) ;

int
leapsec_query(
 leap_result_t * qr ,
 uint32_t ts32 ,
 const time_t * pivot)
{
 leap_table_t * pt;
 vint64 ts64, last, next;
 uint32_t due32;
 int fired;


 fired = FALSE;
 ts64 = ntpcal_ntp_to_ntp(ts32, pivot);
 pt = leapsec_get_table(FALSE);
 memset(qr, 0, sizeof(leap_result_t));

 if (ucmpv64(&ts64, &pt->head.ebase) < 0) {




  reload_limits(pt, &ts64);
 } else if (ucmpv64(&ts64, &pt->head.dtime) >= 0) {
  last = addv64i32(&pt->head.dtime, 3);
  if (ucmpv64(&ts64, &last) >= 0) {

   reload_limits(pt, &ts64);
  } else {

   last = pt->head.ttime;
   qr->warped = (int16_t)(last.D_s.lo -
            pt->head.dtime.D_s.lo);
   next = addv64i32(&ts64, qr->warped);
   reload_limits(pt, &next);
   fired = ucmpv64(&pt->head.ebase, &last) == 0;
   if (fired) {
    ts64 = next;
    ts32 = next.D_s.lo;
   } else {
    qr->warped = 0;
   }
  }
 }

 qr->tai_offs = pt->head.this_tai;
 qr->ebase = pt->head.ebase;
 qr->ttime = pt->head.ttime;


 if (ucmpv64(&ts64, &pt->head.stime) < 0)
  return fired;


 due32 = pt->head.dtime.D_s.lo;

 qr->tai_diff = pt->head.next_tai - pt->head.this_tai;
 qr->ddist = due32 - ts32;
 qr->dynamic = pt->head.dynls;
 qr->proximity = LSPROX_SCHEDULE;


 if (!betweenu32(due32 - SECSPERDAY, ts32, due32))
  return fired;

 qr->proximity = LSPROX_ANNOUNCE;
 if (!betweenu32(due32 - 10, ts32, due32))
  return fired;


 qr->proximity = LSPROX_ALERT;
 return fired;
}
