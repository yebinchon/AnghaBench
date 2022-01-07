
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {size_t length; int data; } ;
struct TYPE_8__ {TYPE_1__ saltvalue; } ;
typedef TYPE_2__ krb5_salt ;
typedef int krb5_keyblock ;
typedef int krb5_error_code ;
typedef int krb5_enctype ;
struct TYPE_9__ {size_t length; int data; } ;
typedef TYPE_3__ krb5_data ;
typedef int krb5_context ;


 int ENOMEM ;
 int N_ (char*,char*) ;
 int free (char*) ;
 int krb5_set_error_message (int ,int ,int ) ;
 int krb5_string_to_key_derived (int ,char*,size_t,int ,int *) ;
 char* malloc (size_t) ;
 int memcpy (char*,int ,size_t) ;
 int memset (char*,int ,size_t) ;

__attribute__((used)) static krb5_error_code
DES3_string_to_key_derived(krb5_context context,
      krb5_enctype enctype,
      krb5_data password,
      krb5_salt salt,
      krb5_data opaque,
      krb5_keyblock *key)
{
    krb5_error_code ret;
    size_t len = password.length + salt.saltvalue.length;
    char *s;

    s = malloc(len);
    if(len != 0 && s == ((void*)0)) {
 krb5_set_error_message(context, ENOMEM, N_("malloc: out of memory", ""));
 return ENOMEM;
    }
    memcpy(s, password.data, password.length);
    memcpy(s + password.length, salt.saltvalue.data, salt.saltvalue.length);
    ret = krb5_string_to_key_derived(context,
         s,
         len,
         enctype,
         key);
    memset(s, 0, len);
    free(s);
    return ret;
}
