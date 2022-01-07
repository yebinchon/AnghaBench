
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct _krb5_encryption_type {TYPE_1__* keytype; } ;
typedef int shaoutput ;
typedef int krb5_keyblock ;
typedef int krb5_error_code ;
typedef int krb5_enctype ;
typedef int krb5_context ;
typedef int keylen ;
struct TYPE_6__ {void const* data; size_t length; } ;
typedef TYPE_2__ heim_octet_string ;
struct TYPE_5__ {int bits; } ;
typedef int EVP_MD_CTX ;


 int ENOMEM ;
 int EVP_DigestFinal_ex (int *,unsigned char*,int *) ;
 int EVP_DigestInit_ex (int *,int ,int *) ;
 int EVP_DigestUpdate (int *,void const*,size_t) ;
 int * EVP_MD_CTX_create () ;
 int EVP_MD_CTX_destroy (int *) ;
 int EVP_sha1 () ;
 int KRB5_PROG_ETYPE_NOSUPP ;
 int N_ (char*,char*) ;
 int SHA_DIGEST_LENGTH ;
 struct _krb5_encryption_type* _krb5_find_enctype (int ) ;
 int free (void*) ;
 int krb5_random_to_key (int ,int ,void*,size_t,int *) ;
 int krb5_set_error_message (int ,int ,int ,...) ;
 void* malloc (size_t) ;
 int memcpy (unsigned char*,unsigned char*,int ) ;
 int memset (void*,int ,int) ;
 int min (size_t,int) ;

krb5_error_code
_krb5_pk_octetstring2key(krb5_context context,
    krb5_enctype type,
    const void *dhdata,
    size_t dhsize,
    const heim_octet_string *c_n,
    const heim_octet_string *k_n,
    krb5_keyblock *key)
{
    struct _krb5_encryption_type *et = _krb5_find_enctype(type);
    krb5_error_code ret;
    size_t keylen, offset;
    void *keydata;
    unsigned char counter;
    unsigned char shaoutput[SHA_DIGEST_LENGTH];
    EVP_MD_CTX *m;

    if(et == ((void*)0)) {
 krb5_set_error_message(context, KRB5_PROG_ETYPE_NOSUPP,
          N_("encryption type %d not supported", ""),
          type);
 return KRB5_PROG_ETYPE_NOSUPP;
    }
    keylen = (et->keytype->bits + 7) / 8;

    keydata = malloc(keylen);
    if (keydata == ((void*)0)) {
 krb5_set_error_message(context, ENOMEM, N_("malloc: out of memory", ""));
 return ENOMEM;
    }

    m = EVP_MD_CTX_create();
    if (m == ((void*)0)) {
 free(keydata);
 krb5_set_error_message(context, ENOMEM, N_("malloc: out of memory", ""));
 return ENOMEM;
    }

    counter = 0;
    offset = 0;
    do {

 EVP_DigestInit_ex(m, EVP_sha1(), ((void*)0));
 EVP_DigestUpdate(m, &counter, 1);
 EVP_DigestUpdate(m, dhdata, dhsize);

 if (c_n)
     EVP_DigestUpdate(m, c_n->data, c_n->length);
 if (k_n)
     EVP_DigestUpdate(m, k_n->data, k_n->length);

 EVP_DigestFinal_ex(m, shaoutput, ((void*)0));

 memcpy((unsigned char *)keydata + offset,
        shaoutput,
        min(keylen - offset, sizeof(shaoutput)));

 offset += sizeof(shaoutput);
 counter++;
    } while(offset < keylen);
    memset(shaoutput, 0, sizeof(shaoutput));

    EVP_MD_CTX_destroy(m);

    ret = krb5_random_to_key(context, type, keydata, keylen, key);
    memset(keydata, 0, sizeof(keylen));
    free(keydata);
    return ret;
}
