
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int X509_EXTENSION ;
typedef int X509V3_CTX ;
struct TYPE_5__ {unsigned char* data; long length; } ;
typedef TYPE_1__ ASN1_OCTET_STRING ;
typedef int ASN1_OBJECT ;


 int ASN1_OBJECT_free (int *) ;
 int ASN1_OCTET_STRING_free (TYPE_1__*) ;
 TYPE_1__* ASN1_OCTET_STRING_new () ;
 int ERR_R_MALLOC_FAILURE ;
 int ERR_add_error_data (int,char*,char const*) ;
 int * OBJ_txt2obj (char const*,int ) ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_hexstr2buf (char const*,long*) ;
 int X509V3_F_V3_GENERIC_EXTENSION ;
 int X509V3_R_EXTENSION_NAME_ERROR ;
 int X509V3_R_EXTENSION_VALUE_ERROR ;
 int X509V3err (int ,int ) ;
 int * X509_EXTENSION_create_by_OBJ (int *,int *,int,TYPE_1__*) ;
 unsigned char* generic_asn1 (char const*,int *,long*) ;

__attribute__((used)) static X509_EXTENSION *v3_generic_extension(const char *ext, const char *value,
                                            int crit, int gen_type,
                                            X509V3_CTX *ctx)
{
    unsigned char *ext_der = ((void*)0);
    long ext_len = 0;
    ASN1_OBJECT *obj = ((void*)0);
    ASN1_OCTET_STRING *oct = ((void*)0);
    X509_EXTENSION *extension = ((void*)0);

    if ((obj = OBJ_txt2obj(ext, 0)) == ((void*)0)) {
        X509V3err(X509V3_F_V3_GENERIC_EXTENSION,
                  X509V3_R_EXTENSION_NAME_ERROR);
        ERR_add_error_data(2, "name=", ext);
        goto err;
    }

    if (gen_type == 1)
        ext_der = OPENSSL_hexstr2buf(value, &ext_len);
    else if (gen_type == 2)
        ext_der = generic_asn1(value, ctx, &ext_len);

    if (ext_der == ((void*)0)) {
        X509V3err(X509V3_F_V3_GENERIC_EXTENSION,
                  X509V3_R_EXTENSION_VALUE_ERROR);
        ERR_add_error_data(2, "value=", value);
        goto err;
    }

    if ((oct = ASN1_OCTET_STRING_new()) == ((void*)0)) {
        X509V3err(X509V3_F_V3_GENERIC_EXTENSION, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    oct->data = ext_der;
    oct->length = ext_len;
    ext_der = ((void*)0);

    extension = X509_EXTENSION_create_by_OBJ(((void*)0), obj, crit, oct);

 err:
    ASN1_OBJECT_free(obj);
    ASN1_OCTET_STRING_free(oct);
    OPENSSL_free(ext_der);
    return extension;

}
