
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vint64 ;
typedef int u_int32 ;
struct tm {int dummy; } ;


 struct tm* get_struct_tm (int *,int) ;
 int ntpcal_ntp_to_time (int ,int *) ;

struct tm *
ntp2unix_tm(
 u_int32 ntp, int local
 )
{
 vint64 vl;
 vl = ntpcal_ntp_to_time(ntp, ((void*)0));
 return get_struct_tm(&vl, local);
}
