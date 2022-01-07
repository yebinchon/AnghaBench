
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vint64 ;
typedef scalar_t__ u_int32 ;
typedef int time_t ;
struct TYPE_3__ {scalar_t__ lo; } ;
typedef TYPE_1__ ntpcal_split ;


 TYPE_1__ ntpcal_daysplit (int *) ;
 int ntpcal_ntp_to_ntp (scalar_t__,int const*) ;

u_int32
caldaystart(u_int32 ntptime, const time_t *pivot)
{
 vint64 vlong;
 ntpcal_split split;

 vlong = ntpcal_ntp_to_ntp(ntptime, pivot);
 split = ntpcal_daysplit(&vlong);

 return ntptime - split.lo;
}
