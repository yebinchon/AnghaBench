
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int X509_SIG ;
typedef int X509_ALGOR ;
typedef int UI_METHOD ;
struct TYPE_8__ {int length; int data; } ;
struct TYPE_7__ {char* data; size_t max; size_t length; } ;
typedef int OSSL_STORE_INFO ;
typedef TYPE_1__ BUF_MEM ;
typedef TYPE_2__ ASN1_OCTET_STRING ;


 int BUF_MEM_free (TYPE_1__*) ;
 TYPE_1__* BUF_MEM_new () ;
 int ERR_R_MALLOC_FAILURE ;
 int OSSL_STORE_F_TRY_DECODE_PKCS8ENCRYPTED ;
 int OSSL_STORE_R_BAD_PASSWORD_READ ;
 int OSSL_STOREerr (int ,int ) ;
 int PEM_BUFSIZE ;
 int PEM_STRING_PKCS8 ;
 int PEM_STRING_PKCS8INF ;
 int PKCS12_pbe_crypt (int const*,char*,int ,int ,int ,unsigned char**,int*,int ) ;
 int X509_SIG_free (int *) ;
 int X509_SIG_get0 (int *,int const**,TYPE_2__ const**) ;
 int * d2i_X509_SIG (int *,unsigned char const**,size_t) ;
 char* file_get_pass (int const*,char*,int,char*,void*) ;
 int * ossl_store_info_new_EMBEDDED (int ,TYPE_1__*) ;
 scalar_t__ strcmp (char const*,int ) ;
 int strlen (char*) ;

__attribute__((used)) static OSSL_STORE_INFO *try_decode_PKCS8Encrypted(const char *pem_name,
                                                  const char *pem_header,
                                                  const unsigned char *blob,
                                                  size_t len, void **pctx,
                                                  int *matchcount,
                                                  const UI_METHOD *ui_method,
                                                  void *ui_data)
{
    X509_SIG *p8 = ((void*)0);
    char kbuf[PEM_BUFSIZE];
    char *pass = ((void*)0);
    const X509_ALGOR *dalg = ((void*)0);
    const ASN1_OCTET_STRING *doct = ((void*)0);
    OSSL_STORE_INFO *store_info = ((void*)0);
    BUF_MEM *mem = ((void*)0);
    unsigned char *new_data = ((void*)0);
    int new_data_len;

    if (pem_name != ((void*)0)) {
        if (strcmp(pem_name, PEM_STRING_PKCS8) != 0)
            return ((void*)0);
        *matchcount = 1;
    }

    if ((p8 = d2i_X509_SIG(((void*)0), &blob, len)) == ((void*)0))
        return ((void*)0);

    *matchcount = 1;

    if ((mem = BUF_MEM_new()) == ((void*)0)) {
        OSSL_STOREerr(OSSL_STORE_F_TRY_DECODE_PKCS8ENCRYPTED,
                      ERR_R_MALLOC_FAILURE);
        goto nop8;
    }

    if ((pass = file_get_pass(ui_method, kbuf, PEM_BUFSIZE,
                              "PKCS8 decrypt password", ui_data)) == ((void*)0)) {
        OSSL_STOREerr(OSSL_STORE_F_TRY_DECODE_PKCS8ENCRYPTED,
                      OSSL_STORE_R_BAD_PASSWORD_READ);
        goto nop8;
    }

    X509_SIG_get0(p8, &dalg, &doct);
    if (!PKCS12_pbe_crypt(dalg, pass, strlen(pass), doct->data, doct->length,
                          &new_data, &new_data_len, 0))
        goto nop8;

    mem->data = (char *)new_data;
    mem->max = mem->length = (size_t)new_data_len;
    X509_SIG_free(p8);

    store_info = ossl_store_info_new_EMBEDDED(PEM_STRING_PKCS8INF, mem);
    if (store_info == ((void*)0)) {
        OSSL_STOREerr(OSSL_STORE_F_TRY_DECODE_PKCS8ENCRYPTED,
                      ERR_R_MALLOC_FAILURE);
        goto nop8;
    }

    return store_info;
 nop8:
    X509_SIG_free(p8);
    BUF_MEM_free(mem);
    return ((void*)0);
}
