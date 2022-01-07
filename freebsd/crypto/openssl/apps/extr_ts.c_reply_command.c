
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TS_TST_INFO ;
typedef int TS_RESP ;
typedef int PKCS7 ;
typedef int EVP_MD ;
typedef int CONF ;
typedef int BIO ;


 int BIO_free_all (int *) ;
 int * BIO_new_file (char const*,char*) ;
 int BIO_printf (int ,char*) ;
 int ERR_print_errors (int ) ;
 int FORMAT_ASN1 ;
 int FORMAT_TEXT ;
 int TS_RESP_free (int *) ;
 int * TS_RESP_get_token (int *) ;
 int * TS_RESP_get_tst_info (int *) ;
 int TS_RESP_print_bio (int *,int *) ;
 int TS_TST_INFO_print_bio (int *,int *) ;
 int bio_err ;
 int * bio_open_default (char const*,char,int ) ;
 int * create_response (int *,char const*,char const*,char const*,char const*,char const*,int const*,char const*,char const*,char const*) ;
 int * d2i_TS_RESP_bio (int *,int *) ;
 int i2d_PKCS7_bio (int *,int *) ;
 int i2d_TS_RESP_bio (int *,int *) ;
 int * read_PKCS7 (int *) ;

__attribute__((used)) static int reply_command(CONF *conf, const char *section, const char *engine,
                         const char *queryfile, const char *passin, const char *inkey,
                         const EVP_MD *md, const char *signer, const char *chain,
                         const char *policy, const char *in, int token_in,
                         const char *out, int token_out, int text)
{
    int ret = 0;
    TS_RESP *response = ((void*)0);
    BIO *in_bio = ((void*)0);
    BIO *query_bio = ((void*)0);
    BIO *inkey_bio = ((void*)0);
    BIO *signer_bio = ((void*)0);
    BIO *out_bio = ((void*)0);

    if (in != ((void*)0)) {
        if ((in_bio = BIO_new_file(in, "rb")) == ((void*)0))
            goto end;
        if (token_in) {
            response = read_PKCS7(in_bio);
        } else {
            response = d2i_TS_RESP_bio(in_bio, ((void*)0));
        }
    } else {
        response = create_response(conf, section, engine, queryfile,
                                   passin, inkey, md, signer, chain, policy);
        if (response != ((void*)0))
            BIO_printf(bio_err, "Response has been generated.\n");
        else
            BIO_printf(bio_err, "Response is not generated.\n");
    }
    if (response == ((void*)0))
        goto end;


    if (text) {
        if ((out_bio = bio_open_default(out, 'w', FORMAT_TEXT)) == ((void*)0))
        goto end;
        if (token_out) {
            TS_TST_INFO *tst_info = TS_RESP_get_tst_info(response);
            if (!TS_TST_INFO_print_bio(out_bio, tst_info))
                goto end;
        } else {
            if (!TS_RESP_print_bio(out_bio, response))
                goto end;
        }
    } else {
        if ((out_bio = bio_open_default(out, 'w', FORMAT_ASN1)) == ((void*)0))
            goto end;
        if (token_out) {
            PKCS7 *token = TS_RESP_get_token(response);
            if (!i2d_PKCS7_bio(out_bio, token))
                goto end;
        } else {
            if (!i2d_TS_RESP_bio(out_bio, response))
                goto end;
        }
    }

    ret = 1;

 end:
    ERR_print_errors(bio_err);
    BIO_free_all(in_bio);
    BIO_free_all(query_bio);
    BIO_free_all(inkey_bio);
    BIO_free_all(signer_bio);
    BIO_free_all(out_bio);
    TS_RESP_free(response);
    return ret;
}
