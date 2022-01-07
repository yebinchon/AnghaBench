
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int salttype; } ;
struct pa_info_data {scalar_t__ etype; TYPE_1__ salt; } ;
typedef int krb5_principal ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
struct TYPE_5__ {int length; int data; } ;
typedef TYPE_2__ heim_octet_string ;
typedef int AS_REQ ;


 scalar_t__ ENCTYPE_NULL ;
 scalar_t__ set_paid (struct pa_info_data*,int ,scalar_t__,int ,int ,int ,int *) ;

__attribute__((used)) static struct pa_info_data *
pa_pw_or_afs3_salt(krb5_context context,
     const krb5_principal client,
     const AS_REQ *asreq,
     struct pa_info_data *paid,
     heim_octet_string *data)
{
    krb5_error_code ret;
    if (paid->etype == ENCTYPE_NULL)
 return ((void*)0);
    ret = set_paid(paid, context,
     paid->etype,
     paid->salt.salttype,
     data->data,
     data->length,
     ((void*)0));
    if (ret)
 return ((void*)0);
    return paid;
}
