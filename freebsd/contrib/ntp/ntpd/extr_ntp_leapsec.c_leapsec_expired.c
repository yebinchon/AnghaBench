
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vint64 ;
typedef int uint32_t ;
typedef int time_t ;
struct TYPE_4__ {int expire; } ;
struct TYPE_5__ {TYPE_1__ head; } ;
typedef TYPE_2__ leap_table_t ;


 int FALSE ;
 TYPE_2__* leapsec_get_table (int ) ;
 int ntpcal_ntp_to_ntp (int ,int const*) ;
 scalar_t__ ucmpv64 (int *,int *) ;

int
leapsec_expired(
 uint32_t when,
 const time_t * tpiv)
{
 const leap_table_t * pt;
 vint64 limit;

 pt = leapsec_get_table(FALSE);
 limit = ntpcal_ntp_to_ntp(when, tpiv);
 return ucmpv64(&limit, &pt->head.expire) >= 0;
}
