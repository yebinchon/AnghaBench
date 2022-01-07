
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_2__ {int hardwarePortId; } ;
typedef TYPE_1__ t_FmPort ;



uint8_t FmPortGetHardwarePortId(t_Handle h_FmPort)
{
    return ((t_FmPort*)h_FmPort)->hardwarePortId;
}
