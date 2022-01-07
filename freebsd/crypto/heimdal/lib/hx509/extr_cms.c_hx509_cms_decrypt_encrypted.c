
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int hx509_lock ;
typedef int hx509_context ;
typedef int heim_oid ;
struct TYPE_12__ {scalar_t__ data; } ;
typedef TYPE_2__ heim_octet_string ;
typedef int cont ;
struct TYPE_14__ {int * parameters; } ;
struct TYPE_11__ {int * encryptedContent; TYPE_4__ contentEncryptionAlgorithm; int contentType; } ;
struct TYPE_13__ {TYPE_1__ encryptedContentInfo; } ;
typedef TYPE_3__ CMSEncryptedData ;
typedef TYPE_4__ AlgorithmIdentifier ;


 int HX509_ALG_NOT_SUPP ;
 int HX509_CMS_NO_DATA_AVAILABLE ;
 int _hx509_pbe_decrypt (int ,int ,TYPE_4__*,int *,TYPE_2__*) ;
 int decode_CMSEncryptedData (void const*,size_t,TYPE_3__*,int *) ;
 int der_copy_oid (int *,int *) ;
 int free (scalar_t__) ;
 int free_CMSEncryptedData (TYPE_3__*) ;
 int hx509_clear_error_string (int ) ;
 int hx509_set_error_string (int ,int ,int,char*) ;
 int memset (TYPE_2__*,int ,int) ;

int
hx509_cms_decrypt_encrypted(hx509_context context,
       hx509_lock lock,
       const void *data,
       size_t length,
       heim_oid *contentType,
       heim_octet_string *content)
{
    heim_octet_string cont;
    CMSEncryptedData ed;
    AlgorithmIdentifier *ai;
    int ret;

    memset(content, 0, sizeof(*content));
    memset(&cont, 0, sizeof(cont));

    ret = decode_CMSEncryptedData(data, length, &ed, ((void*)0));
    if (ret) {
 hx509_set_error_string(context, 0, ret,
          "Failed to decode CMSEncryptedData");
 return ret;
    }

    if (ed.encryptedContentInfo.encryptedContent == ((void*)0)) {
 ret = HX509_CMS_NO_DATA_AVAILABLE;
 hx509_set_error_string(context, 0, ret,
          "No content in EncryptedData");
 goto out;
    }

    ret = der_copy_oid(&ed.encryptedContentInfo.contentType, contentType);
    if (ret) {
 hx509_clear_error_string(context);
 goto out;
    }

    ai = &ed.encryptedContentInfo.contentEncryptionAlgorithm;
    if (ai->parameters == ((void*)0)) {
 ret = HX509_ALG_NOT_SUPP;
 hx509_clear_error_string(context);
 goto out;
    }

    ret = _hx509_pbe_decrypt(context,
        lock,
        ai,
        ed.encryptedContentInfo.encryptedContent,
        &cont);
    if (ret)
 goto out;

    *content = cont;

out:
    if (ret) {
 if (cont.data)
     free(cont.data);
    }
    free_CMSEncryptedData(&ed);
    return ret;
}
