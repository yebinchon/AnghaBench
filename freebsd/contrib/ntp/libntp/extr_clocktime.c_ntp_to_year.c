
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vint64 ;
typedef int u_int32 ;
struct TYPE_4__ {scalar_t__ hi; } ;
typedef TYPE_1__ ntpcal_split ;
typedef scalar_t__ int32 ;


 scalar_t__ DAY_NTP_STARTS ;
 TYPE_1__ ntpcal_daysplit (int *) ;
 int ntpcal_ntp_to_ntp (int ,int *) ;
 TYPE_1__ ntpcal_split_eradays (scalar_t__,int *) ;

__attribute__((used)) static int32
ntp_to_year(
 u_int32 ntp)
{
 vint64 t;
 ntpcal_split s;

 t = ntpcal_ntp_to_ntp(ntp, ((void*)0));
 s = ntpcal_daysplit(&t);
 s = ntpcal_split_eradays(s.hi + DAY_NTP_STARTS - 1, ((void*)0));
 return s.hi + 1;
}
