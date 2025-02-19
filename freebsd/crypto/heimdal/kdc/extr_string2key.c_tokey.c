
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int krb5_salt ;
struct TYPE_5__ {size_t length; scalar_t__ data; } ;
struct TYPE_6__ {TYPE_1__ keyvalue; } ;
typedef TYPE_2__ krb5_keyblock ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_enctype ;
typedef int krb5_context ;


 int free (char*) ;
 scalar_t__ krb5_enctype_to_string (int ,int ,char**) ;
 int krb5_err (int ,int,scalar_t__,char*) ;
 int krb5_free_keyblock_contents (int ,TYPE_2__*) ;
 scalar_t__ krb5_string_to_key_salt (int ,int ,char const*,int ,TYPE_2__*) ;
 int printf (char const*,...) ;

__attribute__((used)) static void
tokey(krb5_context context,
      krb5_enctype enctype,
      const char *pw,
      krb5_salt salt,
      const char *label)
{
    krb5_error_code ret;
    size_t i;
    krb5_keyblock key;
    char *e;

    ret = krb5_string_to_key_salt(context, enctype, pw, salt, &key);
    if (ret)
 krb5_err(context, 1, ret, "krb5_string_to_key_salt");
    ret = krb5_enctype_to_string(context, enctype, &e);
    if (ret)
 krb5_err(context, 1, ret, "krb5_enctype_to_string");
    printf(label, e);
    printf(": ");
    for(i = 0; i < key.keyvalue.length; i++)
 printf("%02x", ((unsigned char*)key.keyvalue.data)[i]);
    printf("\n");
    krb5_free_keyblock_contents(context, &key);
    free(e);
}
