
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_2__ {int pcdEngines; } ;
typedef TYPE_1__ t_FmPort ;



uint32_t FmPortGetPcdEngines(t_Handle h_FmPort)
{
    return ((t_FmPort*)h_FmPort)->pcdEngines;
}
