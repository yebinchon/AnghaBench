
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_2__ {int absoluteProfileId; } ;
typedef TYPE_1__ t_FmPcdPlcrProfile ;



uint16_t FmPcdPlcrProfileGetAbsoluteId(t_Handle h_Profile)
{
        return ((t_FmPcdPlcrProfile*)h_Profile)->absoluteProfileId;
}
