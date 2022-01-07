
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vint64 ;
typedef int uint32_t ;
struct calendar {int dummy; } ;
typedef int ntpcal_split ;


 int DAY_NTP_STARTS ;
 int INSIST (int) ;
 int ntpcal_daysplit (int *) ;
 int ntpcal_daysplit_to_date (struct calendar*,int *,int ) ;
 int ntpcal_ntp_to_ntp (int ,int *) ;

void
caljulian(
 uint32_t ntp,
 struct calendar * jt
 )
{
 vint64 vlong;
 ntpcal_split split;


 INSIST(((void*)0) != jt);






 vlong = ntpcal_ntp_to_ntp(ntp, ((void*)0));
 split = ntpcal_daysplit(&vlong);
 ntpcal_daysplit_to_date(jt, &split, DAY_NTP_STARTS);
}
