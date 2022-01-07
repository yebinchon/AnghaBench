
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_3__* krb5_principal ;
typedef int krb5_context ;
typedef int krb5_boolean ;
struct TYPE_5__ {int len; int * val; } ;
struct TYPE_6__ {scalar_t__ name_type; TYPE_1__ name_string; } ;
struct TYPE_7__ {TYPE_2__ name; } ;


 int KRB5_ANON_NAME ;
 scalar_t__ KRB5_NT_WELLKNOWN ;
 int KRB5_WELLKNOWN_NAME ;
 scalar_t__ strcmp (int ,int ) ;

krb5_boolean
_kdc_is_anonymous(krb5_context context, krb5_principal principal)
{
    if (principal->name.name_type != KRB5_NT_WELLKNOWN ||
 principal->name.name_string.len != 2 ||
 strcmp(principal->name.name_string.val[0], KRB5_WELLKNOWN_NAME) != 0 ||
 strcmp(principal->name.name_string.val[1], KRB5_ANON_NAME) != 0)
 return 0;
    return 1;
}
