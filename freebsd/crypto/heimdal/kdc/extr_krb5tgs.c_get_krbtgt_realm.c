
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; int ** val; } ;
struct TYPE_5__ {TYPE_1__ name_string; } ;
typedef int * Realm ;
typedef TYPE_2__ PrincipalName ;


 int KRB5_TGS_NAME ;
 scalar_t__ strcmp (int *,int ) ;

__attribute__((used)) static Realm
get_krbtgt_realm(const PrincipalName *p)
{
    if(p->name_string.len == 2
       && strcmp(p->name_string.val[0], KRB5_TGS_NAME) == 0)
 return p->name_string.val[1];
    else
 return ((void*)0);
}
