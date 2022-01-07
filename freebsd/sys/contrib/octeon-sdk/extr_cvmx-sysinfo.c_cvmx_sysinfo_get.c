
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cvmx_sysinfo {int dummy; } ;
struct TYPE_2__ {struct cvmx_sysinfo sysinfo; } ;


 TYPE_1__ state ;

struct cvmx_sysinfo *cvmx_sysinfo_get(void)
{
    return &(state.sysinfo);
}
