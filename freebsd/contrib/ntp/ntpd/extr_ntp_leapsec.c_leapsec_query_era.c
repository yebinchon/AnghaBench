
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vint64 ;
typedef int uint32_t ;
typedef int time_t ;
typedef int leap_table_t ;
typedef int leap_era_t ;


 int FALSE ;
 int TRUE ;
 int fetch_leap_era (int *,int const*,int *) ;
 int * leapsec_get_table (int ) ;
 int ntpcal_ntp_to_ntp (int ,int const*) ;

int
leapsec_query_era(
 leap_era_t * qr ,
 uint32_t ntpts,
 const time_t * pivot)
{
 const leap_table_t * pt;
 vint64 ts64;

 pt = leapsec_get_table(FALSE);
 ts64 = ntpcal_ntp_to_ntp(ntpts, pivot);
 fetch_leap_era(qr, pt, &ts64);
 return TRUE;
}
