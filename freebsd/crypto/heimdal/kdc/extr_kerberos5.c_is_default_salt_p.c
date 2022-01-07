
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ salttype; int saltvalue; } ;
typedef TYPE_2__ krb5_salt ;
typedef int krb5_boolean ;
struct TYPE_8__ {TYPE_1__* salt; } ;
struct TYPE_6__ {scalar_t__ type; int salt; } ;
typedef TYPE_3__ Key ;


 int FALSE ;
 int TRUE ;
 scalar_t__ krb5_data_cmp (int *,int *) ;

__attribute__((used)) static krb5_boolean
is_default_salt_p(const krb5_salt *default_salt, const Key *key)
{
    if (key->salt == ((void*)0))
 return TRUE;
    if (default_salt->salttype != key->salt->type)
 return FALSE;
    if (krb5_data_cmp(&default_salt->saltvalue, &key->salt->salt))
 return FALSE;
    return TRUE;
}
