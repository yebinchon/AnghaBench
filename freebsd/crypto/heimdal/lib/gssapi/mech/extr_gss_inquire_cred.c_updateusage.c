
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ gss_cred_usage_t ;


 int AUSAGE ;
 scalar_t__ GSS_C_ACCEPT ;
 scalar_t__ GSS_C_BOTH ;
 scalar_t__ GSS_C_INITIATE ;
 int IUSAGE ;

__attribute__((used)) static void
updateusage(gss_cred_usage_t usage, int *usagemask)
{
    if (usage == GSS_C_BOTH)
 *usagemask |= AUSAGE | IUSAGE;
    else if (usage == GSS_C_ACCEPT)
 *usagemask |= AUSAGE;
    else if (usage == GSS_C_INITIATE)
 *usagemask |= IUSAGE;
}
