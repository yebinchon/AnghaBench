
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_9__ ;
typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef int time_t ;
typedef int key ;
typedef int ivec ;
typedef int hx509_crypto ;
typedef int hx509_context ;
typedef int hx509_certs ;
typedef int * hx509_cert ;
struct TYPE_30__ {int algorithm; TYPE_4__* parameters; } ;
struct TYPE_26__ {TYPE_9__ contentEncryptionAlgorithm; int contentType; TYPE_5__* encryptedContent; } ;
struct TYPE_24__ {size_t len; TYPE_7__* val; } ;
struct TYPE_28__ {scalar_t__ length; int data; TYPE_3__ encryptedContentInfo; TYPE_1__ recipientInfos; } ;
typedef TYPE_5__ heim_oid ;
typedef TYPE_5__ heim_octet_string ;
typedef int ed ;
struct TYPE_25__ {int algorithm; } ;
struct TYPE_29__ {int rid; TYPE_2__ keyEncryptionAlgorithm; int encryptedKey; } ;
struct TYPE_27__ {scalar_t__ length; int data; } ;
typedef TYPE_7__ KeyTransRecipientInfo ;
typedef TYPE_5__ EnvelopedData ;
typedef TYPE_9__ AlgorithmIdentifier ;


 int HX509_CMS_NO_DATA_AVAILABLE ;
 int HX509_CMS_NO_RECIPIENT_CERTIFICATE ;
 int HX509_CMS_UE_ALLOW_WEAK ;
 int HX509_CMS_UE_DONT_REQUIRE_KU_ENCIPHERMENT ;
 int HX509_ERROR_APPEND ;
 int HX509_QUERY_KU_ENCIPHERMENT ;
 int HX509_QUERY_PRIVATE_KEY ;
 int _hx509_cert_private_decrypt (int ,int *,int *,int *,TYPE_5__*) ;
 int decode_EnvelopedData (void const*,size_t,TYPE_5__*,size_t*) ;
 int der_copy_oid (int *,TYPE_5__*) ;
 int der_free_octet_string (TYPE_5__*) ;
 int der_free_oid (TYPE_5__*) ;
 int find_CMSIdentifier (int ,int *,int ,int ,int **,int) ;
 int free (char*) ;
 int free_EnvelopedData (TYPE_5__*) ;
 int hx509_cert_free (int *) ;
 int hx509_crypto_allow_weak (int ) ;
 int hx509_crypto_decrypt (int ,int ,scalar_t__,TYPE_5__*,TYPE_5__*) ;
 int hx509_crypto_destroy (int ) ;
 int hx509_crypto_init (int ,int *,int *,int *) ;
 int hx509_crypto_set_key_data (int ,int ,scalar_t__) ;
 int hx509_crypto_set_params (int ,int ,TYPE_5__*,TYPE_5__*) ;
 int hx509_set_error_string (int ,int ,int,char*,...) ;
 int memset (TYPE_5__*,int ,int) ;
 int unparse_CMSIdentifier (int ,int *,char**) ;

int
hx509_cms_unenvelope(hx509_context context,
       hx509_certs certs,
       int flags,
       const void *data,
       size_t length,
       const heim_octet_string *encryptedContent,
       time_t time_now,
       heim_oid *contentType,
       heim_octet_string *content)
{
    heim_octet_string key;
    EnvelopedData ed;
    hx509_cert cert;
    AlgorithmIdentifier *ai;
    const heim_octet_string *enccontent;
    heim_octet_string *params, params_data;
    heim_octet_string ivec;
    size_t size;
    int ret, matched = 0, findflags = 0;
    size_t i;


    memset(&key, 0, sizeof(key));
    memset(&ed, 0, sizeof(ed));
    memset(&ivec, 0, sizeof(ivec));
    memset(content, 0, sizeof(*content));
    memset(contentType, 0, sizeof(*contentType));

    if ((flags & HX509_CMS_UE_DONT_REQUIRE_KU_ENCIPHERMENT) == 0)
 findflags |= HX509_QUERY_KU_ENCIPHERMENT;

    ret = decode_EnvelopedData(data, length, &ed, &size);
    if (ret) {
 hx509_set_error_string(context, 0, ret,
          "Failed to decode EnvelopedData");
 return ret;
    }

    if (ed.recipientInfos.len == 0) {
 ret = HX509_CMS_NO_RECIPIENT_CERTIFICATE;
 hx509_set_error_string(context, 0, ret,
          "No recipient info in enveloped data");
 goto out;
    }

    enccontent = ed.encryptedContentInfo.encryptedContent;
    if (enccontent == ((void*)0)) {
 if (encryptedContent == ((void*)0)) {
     ret = HX509_CMS_NO_DATA_AVAILABLE;
     hx509_set_error_string(context, 0, ret,
       "Content missing from encrypted data");
     goto out;
 }
 enccontent = encryptedContent;
    } else if (encryptedContent != ((void*)0)) {
 ret = HX509_CMS_NO_DATA_AVAILABLE;
 hx509_set_error_string(context, 0, ret,
          "Both internal and external encrypted data");
 goto out;
    }

    cert = ((void*)0);
    for (i = 0; i < ed.recipientInfos.len; i++) {
 KeyTransRecipientInfo *ri;
 char *str;
 int ret2;

 ri = &ed.recipientInfos.val[i];

 ret = find_CMSIdentifier(context, &ri->rid, certs,
     time_now, &cert,
     HX509_QUERY_PRIVATE_KEY|findflags);
 if (ret)
     continue;

 matched = 1;

 ret = _hx509_cert_private_decrypt(context,
       &ri->encryptedKey,
       &ri->keyEncryptionAlgorithm.algorithm,
       cert, &key);

 hx509_cert_free(cert);
 if (ret == 0)
     break;
 cert = ((void*)0);
 ret2 = unparse_CMSIdentifier(context, &ri->rid, &str);
 if (ret2 == 0) {
     hx509_set_error_string(context, HX509_ERROR_APPEND, ret,
       "Failed to decrypt with %s", str);
     free(str);
 }
    }

    if (!matched) {
 ret = HX509_CMS_NO_RECIPIENT_CERTIFICATE;
 hx509_set_error_string(context, 0, ret,
          "No private key matched any certificate");
 goto out;
    }

    if (cert == ((void*)0)) {
 ret = HX509_CMS_NO_RECIPIENT_CERTIFICATE;
 hx509_set_error_string(context, HX509_ERROR_APPEND, ret,
          "No private key decrypted the transfer key");
 goto out;
    }

    ret = der_copy_oid(&ed.encryptedContentInfo.contentType, contentType);
    if (ret) {
 hx509_set_error_string(context, 0, ret,
          "Failed to copy EnvelopedData content oid");
 goto out;
    }

    ai = &ed.encryptedContentInfo.contentEncryptionAlgorithm;
    if (ai->parameters) {
 params_data.data = ai->parameters->data;
 params_data.length = ai->parameters->length;
 params = &params_data;
    } else
 params = ((void*)0);

    {
 hx509_crypto crypto;

 ret = hx509_crypto_init(context, ((void*)0), &ai->algorithm, &crypto);
 if (ret)
     goto out;

 if (flags & HX509_CMS_UE_ALLOW_WEAK)
     hx509_crypto_allow_weak(crypto);

 if (params) {
     ret = hx509_crypto_set_params(context, crypto, params, &ivec);
     if (ret) {
  hx509_crypto_destroy(crypto);
  goto out;
     }
 }

 ret = hx509_crypto_set_key_data(crypto, key.data, key.length);
 if (ret) {
     hx509_crypto_destroy(crypto);
     hx509_set_error_string(context, 0, ret,
       "Failed to set key for decryption "
       "of EnvelopedData");
     goto out;
 }

 ret = hx509_crypto_decrypt(crypto,
       enccontent->data,
       enccontent->length,
       ivec.length ? &ivec : ((void*)0),
       content);
 hx509_crypto_destroy(crypto);
 if (ret) {
     hx509_set_error_string(context, 0, ret,
       "Failed to decrypt EnvelopedData");
     goto out;
 }
    }

out:

    free_EnvelopedData(&ed);
    der_free_octet_string(&key);
    if (ivec.length)
 der_free_octet_string(&ivec);
    if (ret) {
 der_free_oid(contentType);
 der_free_octet_string(content);
    }

    return ret;
}
