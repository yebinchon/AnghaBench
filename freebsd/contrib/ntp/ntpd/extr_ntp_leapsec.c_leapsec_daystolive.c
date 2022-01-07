
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vint64 ;
typedef int uint32_t ;
typedef int time_t ;
struct TYPE_5__ {int expire; } ;
struct TYPE_6__ {TYPE_1__ head; } ;
typedef TYPE_2__ leap_table_t ;
typedef int int32_t ;
struct TYPE_7__ {int hi; } ;


 int FALSE ;
 TYPE_2__* leapsec_get_table (int ) ;
 TYPE_3__ ntpcal_daysplit (int *) ;
 int ntpcal_ntp_to_ntp (int ,int const*) ;
 int subv64 (int *,int *) ;

int32_t
leapsec_daystolive(
 uint32_t when,
 const time_t * tpiv)
{
 const leap_table_t * pt;
 vint64 limit;

 pt = leapsec_get_table(FALSE);
 limit = ntpcal_ntp_to_ntp(when, tpiv);
 limit = subv64(&pt->head.expire, &limit);
 return ntpcal_daysplit(&limit).hi;
}
