
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_3__* hx509_private_key ;
typedef int hx509_context ;
struct TYPE_8__ {unsigned char* data; int length; } ;
struct TYPE_11__ {TYPE_1__ subjectPublicKey; int algorithm; } ;
struct TYPE_9__ {int rsa; } ;
struct TYPE_10__ {TYPE_2__ private_key; } ;
typedef TYPE_4__ SubjectPublicKeyInfo ;


 int ASN1_OID_ID_PKCS1_RSAENCRYPTION ;
 int ENOMEM ;
 int free (unsigned char*) ;
 int hx509_set_error_string (int ,int ,int,char*) ;
 int i2d_RSAPublicKey (int ,unsigned char**) ;
 unsigned char* malloc (int) ;
 int memset (TYPE_4__*,int ,int) ;
 int set_digest_alg (int *,int ,char*,int) ;

__attribute__((used)) static int
rsa_private_key2SPKI(hx509_context context,
       hx509_private_key private_key,
       SubjectPublicKeyInfo *spki)
{
    int len, ret;

    memset(spki, 0, sizeof(*spki));

    len = i2d_RSAPublicKey(private_key->private_key.rsa, ((void*)0));

    spki->subjectPublicKey.data = malloc(len);
    if (spki->subjectPublicKey.data == ((void*)0)) {
 hx509_set_error_string(context, 0, ENOMEM, "malloc - out of memory");
 return ENOMEM;
    }
    spki->subjectPublicKey.length = len * 8;

    ret = set_digest_alg(&spki->algorithm, ASN1_OID_ID_PKCS1_RSAENCRYPTION,
    "\x05\x00", 2);
    if (ret) {
 hx509_set_error_string(context, 0, ret, "malloc - out of memory");
 free(spki->subjectPublicKey.data);
 spki->subjectPublicKey.data = ((void*)0);
 spki->subjectPublicKey.length = 0;
 return ret;
    }

    {
 unsigned char *pp = spki->subjectPublicKey.data;
 i2d_RSAPublicKey(private_key->private_key.rsa, &pp);
    }

    return 0;
}
