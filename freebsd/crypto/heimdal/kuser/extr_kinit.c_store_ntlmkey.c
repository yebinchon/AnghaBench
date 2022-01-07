
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ntlm_buf {int data; int length; } ;
typedef int krb5_error_code ;
struct TYPE_3__ {int data; int length; } ;
typedef TYPE_1__ krb5_data ;
typedef int krb5_context ;
typedef int krb5_ccache ;


 int ENOMEM ;
 int asprintf (char**,char*,char const*) ;
 int free (char*) ;
 int krb5_cc_set_config (int ,int ,int *,char*,TYPE_1__*) ;
 int krb5_clear_error_message (int ) ;

__attribute__((used)) static krb5_error_code
store_ntlmkey(krb5_context context, krb5_ccache id,
       const char *domain, struct ntlm_buf *buf)
{
    krb5_error_code ret;
    krb5_data data;
    char *name;

    asprintf(&name, "ntlm-key-%s", domain);
    if (name == ((void*)0)) {
 krb5_clear_error_message(context);
 return ENOMEM;
    }

    data.length = buf->length;
    data.data = buf->data;

    ret = krb5_cc_set_config(context, id, ((void*)0), name, &data);
    free(name);
    return ret;
}
