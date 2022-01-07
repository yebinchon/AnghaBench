
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_VERIFY_PARAM ;
typedef int TS_VERIFY_CTX ;
typedef int TS_RESP ;
typedef int PKCS7 ;
typedef int BIO ;


 int BIO_free_all (int *) ;
 int * BIO_new_file (char const*,char*) ;
 int ERR_print_errors (int ) ;
 int PKCS7_free (int *) ;
 int TS_RESP_free (int *) ;
 int TS_RESP_verify_response (int *,int *) ;
 int TS_RESP_verify_token (int *,int *) ;
 int TS_VERIFY_CTX_free (int *) ;
 int bio_err ;
 int * create_verify_ctx (char const*,char const*,char const*,char const*,char const*,char const*,int *) ;
 int * d2i_PKCS7_bio (int *,int *) ;
 int * d2i_TS_RESP_bio (int *,int *) ;
 int printf (char*) ;

__attribute__((used)) static int verify_command(const char *data, const char *digest, const char *queryfile,
                          const char *in, int token_in,
                          const char *CApath, const char *CAfile, const char *untrusted,
                          X509_VERIFY_PARAM *vpm)
{
    BIO *in_bio = ((void*)0);
    PKCS7 *token = ((void*)0);
    TS_RESP *response = ((void*)0);
    TS_VERIFY_CTX *verify_ctx = ((void*)0);
    int ret = 0;

    if ((in_bio = BIO_new_file(in, "rb")) == ((void*)0))
        goto end;
    if (token_in) {
        if ((token = d2i_PKCS7_bio(in_bio, ((void*)0))) == ((void*)0))
            goto end;
    } else {
        if ((response = d2i_TS_RESP_bio(in_bio, ((void*)0))) == ((void*)0))
            goto end;
    }

    if ((verify_ctx = create_verify_ctx(data, digest, queryfile,
                                        CApath, CAfile, untrusted,
                                        vpm)) == ((void*)0))
        goto end;

    ret = token_in
        ? TS_RESP_verify_token(verify_ctx, token)
        : TS_RESP_verify_response(verify_ctx, response);

 end:
    printf("Verification: ");
    if (ret)
        printf("OK\n");
    else {
        printf("FAILED\n");
        ERR_print_errors(bio_err);
    }

    BIO_free_all(in_bio);
    PKCS7_free(token);
    TS_RESP_free(response);
    TS_VERIFY_CTX_free(verify_ctx);
    return ret;
}
