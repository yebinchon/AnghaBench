
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_2__ {scalar_t__ owners; } ;
typedef TYPE_1__ t_FmPcdKgScheme ;


 int FALSE ;
 int TRUE ;

bool FmPcdKgIsSchemeHasOwners(t_Handle h_Scheme)
{
    return (((t_FmPcdKgScheme*)h_Scheme)->owners == 0)?FALSE:TRUE;
}
