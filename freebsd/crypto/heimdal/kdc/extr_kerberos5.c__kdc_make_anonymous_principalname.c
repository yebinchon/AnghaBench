
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int krb5_error_code ;
struct TYPE_4__ {int len; int ** val; } ;
struct TYPE_5__ {TYPE_1__ name_string; int name_type; } ;
typedef TYPE_2__ PrincipalName ;


 int ENOMEM ;
 int KRB5_NT_PRINCIPAL ;
 int free (int **) ;
 int ** malloc (int) ;
 int * strdup (char*) ;

krb5_error_code
_kdc_make_anonymous_principalname (PrincipalName *pn)
{
    pn->name_type = KRB5_NT_PRINCIPAL;
    pn->name_string.len = 1;
    pn->name_string.val = malloc(sizeof(*pn->name_string.val));
    if (pn->name_string.val == ((void*)0))
 return ENOMEM;
    pn->name_string.val[0] = strdup("anonymous");
    if (pn->name_string.val[0] == ((void*)0)) {
 free(pn->name_string.val);
 pn->name_string.val = ((void*)0);
 return ENOMEM;
    }
    return 0;
}
