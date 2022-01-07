
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct hx509_collector {int dummy; } ;
typedef int hx509_pem_header ;
typedef int hx509_context ;
struct TYPE_6__ {size_t length; int data; } ;
typedef TYPE_1__ heim_octet_string ;
struct TYPE_7__ {int privateKey; int privateKeyAlgorithm; } ;
typedef TYPE_2__ PKCS8PrivateKeyInfo ;
typedef int AlgorithmIdentifier ;


 int _hx509_collector_private_key_add (int ,struct hx509_collector*,int *,int *,int *,TYPE_1__*) ;
 int decode_PKCS8PrivateKeyInfo (void const*,size_t,TYPE_2__*,int *) ;
 int free_PKCS8PrivateKeyInfo (TYPE_2__*) ;
 int rk_UNCONST (void const*) ;

__attribute__((used)) static int
parse_pkcs8_private_key(hx509_context context, const char *fn,
   struct hx509_collector *c,
   const hx509_pem_header *headers,
   const void *data, size_t length,
   const AlgorithmIdentifier *ai)
{
    PKCS8PrivateKeyInfo ki;
    heim_octet_string keydata;

    int ret;

    ret = decode_PKCS8PrivateKeyInfo(data, length, &ki, ((void*)0));
    if (ret)
 return ret;

    keydata.data = rk_UNCONST(data);
    keydata.length = length;

    ret = _hx509_collector_private_key_add(context,
        c,
        &ki.privateKeyAlgorithm,
        ((void*)0),
        &ki.privateKey,
        &keydata);
    free_PKCS8PrivateKeyInfo(&ki);
    return ret;
}
