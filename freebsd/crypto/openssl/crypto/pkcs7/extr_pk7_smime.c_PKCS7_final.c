
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PKCS7 ;
typedef int BIO ;


 int BIO_flush (int *) ;
 int BIO_free_all (int *) ;
 int ERR_R_MALLOC_FAILURE ;
 int PKCS7_F_PKCS7_FINAL ;
 int PKCS7_R_PKCS7_DATASIGN ;
 int PKCS7_dataFinal (int *,int *) ;
 int * PKCS7_dataInit (int *,int *) ;
 int PKCS7err (int ,int ) ;
 int SMIME_crlf_copy (int *,int *,int) ;

int PKCS7_final(PKCS7 *p7, BIO *data, int flags)
{
    BIO *p7bio;
    int ret = 0;

    if ((p7bio = PKCS7_dataInit(p7, ((void*)0))) == ((void*)0)) {
        PKCS7err(PKCS7_F_PKCS7_FINAL, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    SMIME_crlf_copy(data, p7bio, flags);

    (void)BIO_flush(p7bio);

    if (!PKCS7_dataFinal(p7, p7bio)) {
        PKCS7err(PKCS7_F_PKCS7_FINAL, PKCS7_R_PKCS7_DATASIGN);
        goto err;
    }

    ret = 1;

 err:
    BIO_free_all(p7bio);

    return ret;

}
