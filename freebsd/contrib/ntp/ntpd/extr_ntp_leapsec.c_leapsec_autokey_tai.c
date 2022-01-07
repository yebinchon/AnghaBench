
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vint64 ;
typedef int uint32_t ;
typedef int time_t ;
struct TYPE_8__ {scalar_t__ base_tai; int size; int this_tai; int next_tai; } ;
struct TYPE_10__ {TYPE_2__* info; TYPE_1__ head; } ;
typedef TYPE_3__ leap_table_t ;
struct TYPE_11__ {scalar_t__ taiof; void* ttime; void* ebase; } ;
typedef TYPE_4__ leap_era_t ;
struct TYPE_9__ {int taiof; int dynls; } ;


 int FALSE ;
 int TRUE ;
 void* addv64i32 (void**,int) ;
 int fetch_leap_era (TYPE_4__*,TYPE_3__*,int *) ;
 TYPE_3__* leapsec_get_table (int) ;
 int ntpcal_ntp_to_ntp (int ,int const*) ;
 scalar_t__ ucmpv64 (int *,void**) ;

int
leapsec_autokey_tai(
 int tai_offset,
 uint32_t ntpnow ,
 const time_t * pivot )
{
 leap_table_t * pt;
 leap_era_t era;
 vint64 now64;
 int idx;

 (void)tai_offset;
 pt = leapsec_get_table(FALSE);





 if (pt->head.base_tai != 0 || tai_offset < 10)
  return FALSE;
 for (idx = 0; idx != pt->head.size; idx++)
  if ( ! pt->info[idx].dynls)
   return FALSE;


 now64 = ntpcal_ntp_to_ntp(ntpnow, pivot);
 fetch_leap_era(&era, pt, &now64);


 era.ebase = addv64i32(&era.ebase, 20);
 if (ucmpv64(&now64, &era.ebase) < 0)
  return FALSE;

 era.ttime = addv64i32(&era.ttime, -20);
 if (ucmpv64(&now64, &era.ttime) > 0)
  return FALSE;


 tai_offset -= era.taiof;


 pt->head.base_tai += tai_offset;
 pt->head.this_tai += tai_offset;
 pt->head.next_tai += tai_offset;


 for (idx = 0; idx != pt->head.size; idx++)
  pt->info[idx].taiof += tai_offset;


 return TRUE;
}
