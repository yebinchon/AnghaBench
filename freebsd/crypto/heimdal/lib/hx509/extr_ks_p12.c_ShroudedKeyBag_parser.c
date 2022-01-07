
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct hx509_collector {int dummy; } ;
typedef int pk ;
typedef int hx509_context ;
struct TYPE_8__ {int length; int data; } ;
typedef TYPE_1__ heim_octet_string ;
struct TYPE_9__ {int encryptedData; int encryptionAlgorithm; } ;
typedef TYPE_2__ PKCS8EncryptedPrivateKeyInfo ;
typedef int PKCS12_Attributes ;


 int _hx509_collector_get_lock (struct hx509_collector*) ;
 int _hx509_pbe_decrypt (int ,int ,int *,int *,TYPE_1__*) ;
 int decode_PKCS8EncryptedPrivateKeyInfo (void const*,size_t,TYPE_2__*,int *) ;
 int der_free_octet_string (TYPE_1__*) ;
 int free_PKCS8EncryptedPrivateKeyInfo (TYPE_2__*) ;
 int keyBag_parser (int ,struct hx509_collector*,int ,int ,int const*) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static int
ShroudedKeyBag_parser(hx509_context context,
        struct hx509_collector *c,
        const void *data, size_t length,
        const PKCS12_Attributes *attrs)
{
    PKCS8EncryptedPrivateKeyInfo pk;
    heim_octet_string content;
    int ret;

    memset(&pk, 0, sizeof(pk));

    ret = decode_PKCS8EncryptedPrivateKeyInfo(data, length, &pk, ((void*)0));
    if (ret)
 return ret;

    ret = _hx509_pbe_decrypt(context,
        _hx509_collector_get_lock(c),
        &pk.encryptionAlgorithm,
        &pk.encryptedData,
        &content);
    free_PKCS8EncryptedPrivateKeyInfo(&pk);
    if (ret)
 return ret;

    ret = keyBag_parser(context, c, content.data, content.length, attrs);
    der_free_octet_string(&content);
    return ret;
}
