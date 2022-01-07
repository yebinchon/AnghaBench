
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint16_t ;
typedef int s ;
typedef int krb5_salt ;
struct TYPE_9__ {int data; } ;
struct TYPE_7__ {TYPE_3__ keyvalue; int keytype; } ;
typedef TYPE_1__ krb5_keyblock ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_enctype ;
struct TYPE_8__ {int data; } ;
typedef TYPE_2__ krb5_data ;
typedef int krb5_context ;
typedef int EVP_MD_CTX ;


 scalar_t__ ENOMEM ;
 int EVP_DigestFinal_ex (int *,int ,int *) ;
 int EVP_DigestInit_ex (int *,int ,int *) ;
 int EVP_DigestUpdate (int *,unsigned char*,int) ;
 int * EVP_MD_CTX_create () ;
 int EVP_MD_CTX_destroy (int *) ;
 int EVP_md4 () ;
 int N_ (char*,char*) ;
 int free (int*) ;
 scalar_t__ krb5_data_alloc (TYPE_3__*,int) ;
 int krb5_set_error_message (int ,scalar_t__,int ) ;
 int* malloc (size_t) ;
 int memset (int*,int ,size_t) ;
 scalar_t__ wind_utf8ucs2 (int ,int*,size_t*) ;
 scalar_t__ wind_utf8ucs2_length (int ,size_t*) ;

__attribute__((used)) static krb5_error_code
ARCFOUR_string_to_key(krb5_context context,
        krb5_enctype enctype,
        krb5_data password,
        krb5_salt salt,
        krb5_data opaque,
        krb5_keyblock *key)
{
    krb5_error_code ret;
    uint16_t *s = ((void*)0);
    size_t len = 0, i;
    EVP_MD_CTX *m;

    m = EVP_MD_CTX_create();
    if (m == ((void*)0)) {
 ret = ENOMEM;
 krb5_set_error_message(context, ret, N_("malloc: out of memory", ""));
 goto out;
    }

    EVP_DigestInit_ex(m, EVP_md4(), ((void*)0));

    ret = wind_utf8ucs2_length(password.data, &len);
    if (ret) {
 krb5_set_error_message (context, ret,
    N_("Password not an UCS2 string", ""));
 goto out;
    }

    s = malloc (len * sizeof(s[0]));
    if (len != 0 && s == ((void*)0)) {
 krb5_set_error_message (context, ENOMEM,
    N_("malloc: out of memory", ""));
 ret = ENOMEM;
 goto out;
    }

    ret = wind_utf8ucs2(password.data, s, &len);
    if (ret) {
 krb5_set_error_message (context, ret,
    N_("Password not an UCS2 string", ""));
 goto out;
    }


    for (i = 0; i < len; i++) {
 unsigned char p;
 p = (s[i] & 0xff);
 EVP_DigestUpdate (m, &p, 1);
 p = (s[i] >> 8) & 0xff;
 EVP_DigestUpdate (m, &p, 1);
    }

    key->keytype = enctype;
    ret = krb5_data_alloc (&key->keyvalue, 16);
    if (ret) {
 krb5_set_error_message (context, ENOMEM, N_("malloc: out of memory", ""));
 goto out;
    }
    EVP_DigestFinal_ex (m, key->keyvalue.data, ((void*)0));

 out:
    EVP_MD_CTX_destroy(m);
    if (s)
 memset (s, 0, len);
    free (s);
    return ret;
}
