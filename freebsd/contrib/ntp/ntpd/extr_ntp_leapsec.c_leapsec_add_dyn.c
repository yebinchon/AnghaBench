
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vint64 ;
typedef int uint32_t ;
typedef int time_t ;
typedef int leap_table_t ;


 int TRUE ;
 scalar_t__ leapsec_add (int *,int *,int) ;
 int * leapsec_get_table (int ) ;
 scalar_t__ leapsec_set_table (int *) ;
 int ntpcal_ntp_to_ntp (int ,int const*) ;

int
leapsec_add_dyn(
 int insert,
 uint32_t ntpnow,
 const time_t * pivot )
{
 leap_table_t * pt;
 vint64 now64;

 pt = leapsec_get_table(TRUE);
 now64 = ntpcal_ntp_to_ntp(ntpnow, pivot);
 return ( leapsec_add(pt, &now64, (insert != 0))
  && leapsec_set_table(pt));
}
