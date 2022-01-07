
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct testcase {scalar_t__ enctype; unsigned char* key; int* res; int constant_len; int constant; } ;
struct TYPE_6__ {int length; unsigned char* data; } ;
struct TYPE_7__ {TYPE_1__ keyvalue; int keytype; } ;
typedef TYPE_2__ krb5_keyblock ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;


 int KEYTYPE_DES3 ;
 int MAXSIZE ;
 int errx (int,char*,scalar_t__) ;
 scalar_t__ krb5_derive_key (int ,TYPE_2__*,scalar_t__,int ,int ,TYPE_2__**) ;
 int krb5_err (int ,int,scalar_t__,char*) ;
 int krb5_free_context (int ) ;
 int krb5_free_keyblock (int ,TYPE_2__*) ;
 scalar_t__ krb5_init_context (int *) ;
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

    for (t = tests; t->enctype != 0; ++t) {
 krb5_keyblock key;
 krb5_keyblock *dkey;

 key.keytype = KEYTYPE_DES3;
 key.keyvalue.length = MAXSIZE;
 key.keyvalue.data = t->key;

 ret = krb5_derive_key(context, &key, t->enctype, t->constant,
         t->constant_len, &dkey);
 if (ret)
     krb5_err (context, 1, ret, "krb5_derive_key");
 if (memcmp (dkey->keyvalue.data, t->res, dkey->keyvalue.length) != 0) {
     const unsigned char *p = dkey->keyvalue.data;
     int i;

     printf ("derive_key failed\n");
     printf ("should be: ");
     for (i = 0; i < dkey->keyvalue.length; ++i)
  printf ("%02x", t->res[i]);
     printf ("\nresult was: ");
     for (i = 0; i < dkey->keyvalue.length; ++i)
  printf ("%02x", p[i]);
     printf ("\n");
     val = 1;
 }
 krb5_free_keyblock(context, dkey);
    }
    krb5_free_context(context);

    return val;
}
