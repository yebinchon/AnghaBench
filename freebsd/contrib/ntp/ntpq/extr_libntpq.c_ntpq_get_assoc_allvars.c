
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int associd_t ;


 int ntpq_get_assoc_clockvars (int ) ;
 int ntpq_get_assoc_peervars (int ) ;

int ntpq_get_assoc_allvars( associd_t associd )
{
 return ntpq_get_assoc_peervars ( associd ) &
        ntpq_get_assoc_clockvars( associd );
}
