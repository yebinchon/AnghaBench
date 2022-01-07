
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* aliases; } ;
typedef TYPE_2__ krb5_keytab_entry ;
typedef int krb5_context ;
typedef int krb5_const_principal ;
typedef int krb5_boolean ;
struct TYPE_4__ {unsigned int len; int * val; } ;


 int FALSE ;
 int TRUE ;
 scalar_t__ krb5_principal_compare (int ,int *,int ) ;

__attribute__((used)) static krb5_boolean
compare_aliseses(krb5_context context,
   krb5_keytab_entry *entry,
   krb5_const_principal principal)
{
    unsigned int i;
    if (entry->aliases == ((void*)0))
 return FALSE;
    for (i = 0; i < entry->aliases->len; i++)
 if (krb5_principal_compare(context, &entry->aliases->val[i], principal))
     return TRUE;
    return FALSE;
}
