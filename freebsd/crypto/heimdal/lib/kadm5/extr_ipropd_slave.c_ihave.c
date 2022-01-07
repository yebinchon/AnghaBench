
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_char ;
typedef int krb5_storage ;
typedef int krb5_error_code ;
struct TYPE_3__ {int length; int * data; } ;
typedef TYPE_1__ krb5_data ;
typedef int krb5_context ;
typedef int krb5_auth_context ;


 int I_HAVE ;
 int krb5_storage_free (int *) ;
 int * krb5_storage_from_mem (int *,int) ;
 int krb5_store_int32 (int *,int ) ;
 int krb5_warn (int ,int,char*) ;
 int krb5_write_priv_message (int ,int ,int*,TYPE_1__*) ;

__attribute__((used)) static krb5_error_code
ihave (krb5_context context, krb5_auth_context auth_context,
       int fd, uint32_t version)
{
    int ret;
    u_char buf[8];
    krb5_storage *sp;
    krb5_data data;

    sp = krb5_storage_from_mem (buf, 8);
    krb5_store_int32 (sp, I_HAVE);
    krb5_store_int32 (sp, version);
    krb5_storage_free (sp);
    data.length = 8;
    data.data = buf;

    ret = krb5_write_priv_message(context, auth_context, &fd, &data);
    if (ret)
 krb5_warn (context, ret, "krb5_write_message");
    return ret;
}
