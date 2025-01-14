
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct testcase {char* principal_name; char* password; int* res; int enctype; } ;
typedef int krb5_principal ;
struct TYPE_5__ {unsigned char* data; int length; } ;
struct TYPE_6__ {TYPE_1__ keyvalue; } ;
typedef TYPE_2__ krb5_keyblock ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;


 int errx (int,char*,scalar_t__) ;
 int krb5_err (int ,int,scalar_t__,char*,...) ;
 int krb5_free_context (int ) ;
 int krb5_free_keyblock_contents (int ,TYPE_2__*) ;
 int krb5_free_principal (int ,int ) ;
 scalar_t__ krb5_init_context (int *) ;
 scalar_t__ krb5_parse_name (int ,char*,int *) ;
 int krb5_set_default_realm (int ,char*) ;
 scalar_t__ krb5_string_to_key (int ,int ,char*,int ,TYPE_2__*) ;
 scalar_t__ memcmp (unsigned char*,int*,int) ;
 int printf (char*,...) ;
 struct testcase* tests ;

int
main(int argc, char **argv)
{
    struct testcase *t;
    krb5_context context;
    krb5_error_code ret;
    int val = 0;

    ret = krb5_init_context (&context);
    if (ret)
 errx (1, "krb5_init_context failed: %d", ret);



    krb5_set_default_realm(context, "");

    for (t = tests; t->principal_name; ++t) {
 krb5_keyblock key;
 krb5_principal principal;
 int i;

 ret = krb5_parse_name (context, t->principal_name, &principal);
 if (ret)
     krb5_err (context, 1, ret, "krb5_parse_name %s",
        t->principal_name);
 ret = krb5_string_to_key (context, t->enctype, t->password,
      principal, &key);
 if (ret)
     krb5_err (context, 1, ret, "krb5_string_to_key");
 krb5_free_principal (context, principal);
 if (memcmp (key.keyvalue.data, t->res, key.keyvalue.length) != 0) {
     const unsigned char *p = key.keyvalue.data;

     printf ("string_to_key(%s, %s) failed\n",
      t->principal_name, t->password);
     printf ("should be: ");
     for (i = 0; i < key.keyvalue.length; ++i)
  printf ("%02x", t->res[i]);
     printf ("\nresult was: ");
     for (i = 0; i < key.keyvalue.length; ++i)
  printf ("%02x", p[i]);
     printf ("\n");
     val = 1;
 }
 krb5_free_keyblock_contents(context, &key);
    }
    krb5_free_context(context);
    return val;
}
