
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_2__ {int schemeId; } ;
typedef TYPE_1__ t_FmPcdKgScheme ;



uint8_t FmPcdKgGetSchemeId(t_Handle h_Scheme)
{
    return ((t_FmPcdKgScheme*)h_Scheme)->schemeId;

}
