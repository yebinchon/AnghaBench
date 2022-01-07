
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_2__ {int valid; } ;
typedef TYPE_1__ t_FmPcdKgScheme ;



bool FmPcdKgIsSchemeValidSw(t_Handle h_Scheme)
{
    t_FmPcdKgScheme *p_Scheme = (t_FmPcdKgScheme*)h_Scheme;

    return p_Scheme->valid;
}
