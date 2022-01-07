
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int EVP_PKEY_CTX ;
typedef int EVP_PKEY_ASN1_METHOD ;
typedef int EVP_PKEY ;
typedef int ENGINE ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new_file (char const*,char*) ;
 int BIO_printf (int ,char*,...) ;
 int BIO_puts (int ,char*) ;
 int BIO_reset (int *) ;
 int ENGINE_finish (int *) ;
 int ERR_print_errors (int ) ;
 int EVP_PKEY_CTX_free (int *) ;
 int * EVP_PKEY_CTX_new (int *,int *) ;
 int * EVP_PKEY_CTX_new_id (int,int *) ;
 scalar_t__ EVP_PKEY_CTX_set_rsa_keygen_bits (int *,long) ;
 int EVP_PKEY_RSA ;
 int * EVP_PKEY_asn1_find (int **,int) ;
 int * EVP_PKEY_asn1_find_str (int **,char const*,int) ;
 int EVP_PKEY_asn1_get0_info (int *,int*,int *,int *,char const**,int const*) ;
 int EVP_PKEY_base_id (int *) ;
 long EVP_PKEY_bits (int *) ;
 int EVP_PKEY_free (int *) ;
 int EVP_PKEY_id (int *) ;
 scalar_t__ EVP_PKEY_keygen_init (int *) ;
 char* OPENSSL_strdup (char const*) ;
 int * PEM_read_bio_Parameters (int *,int *) ;
 int * PEM_read_bio_X509 (int *,int *,int *,int *) ;
 int X509_free (int *) ;
 int * X509_get_pubkey (int *) ;
 long atol (char const*) ;
 int bio_err ;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static EVP_PKEY_CTX *set_keygen_ctx(const char *gstr,
                                    int *pkey_type, long *pkeylen,
                                    char **palgnam, ENGINE *keygen_engine)
{
    EVP_PKEY_CTX *gctx = ((void*)0);
    EVP_PKEY *param = ((void*)0);
    long keylen = -1;
    BIO *pbio = ((void*)0);
    const char *paramfile = ((void*)0);

    if (gstr == ((void*)0)) {
        *pkey_type = EVP_PKEY_RSA;
        keylen = *pkeylen;
    } else if (gstr[0] >= '0' && gstr[0] <= '9') {
        *pkey_type = EVP_PKEY_RSA;
        keylen = atol(gstr);
        *pkeylen = keylen;
    } else if (strncmp(gstr, "param:", 6) == 0) {
        paramfile = gstr + 6;
    } else {
        const char *p = strchr(gstr, ':');
        int len;
        ENGINE *tmpeng;
        const EVP_PKEY_ASN1_METHOD *ameth;

        if (p != ((void*)0))
            len = p - gstr;
        else
            len = strlen(gstr);





        ameth = EVP_PKEY_asn1_find_str(&tmpeng, gstr, len);

        if (ameth == ((void*)0)) {
            BIO_printf(bio_err, "Unknown algorithm %.*s\n", len, gstr);
            return ((void*)0);
        }

        EVP_PKEY_asn1_get0_info(((void*)0), pkey_type, ((void*)0), ((void*)0), ((void*)0), ameth);

        ENGINE_finish(tmpeng);

        if (*pkey_type == EVP_PKEY_RSA) {
            if (p != ((void*)0)) {
                keylen = atol(p + 1);
                *pkeylen = keylen;
            } else {
                keylen = *pkeylen;
            }
        } else if (p != ((void*)0)) {
            paramfile = p + 1;
        }
    }

    if (paramfile != ((void*)0)) {
        pbio = BIO_new_file(paramfile, "r");
        if (pbio == ((void*)0)) {
            BIO_printf(bio_err, "Can't open parameter file %s\n", paramfile);
            return ((void*)0);
        }
        param = PEM_read_bio_Parameters(pbio, ((void*)0));

        if (param == ((void*)0)) {
            X509 *x;

            (void)BIO_reset(pbio);
            x = PEM_read_bio_X509(pbio, ((void*)0), ((void*)0), ((void*)0));
            if (x != ((void*)0)) {
                param = X509_get_pubkey(x);
                X509_free(x);
            }
        }

        BIO_free(pbio);

        if (param == ((void*)0)) {
            BIO_printf(bio_err, "Error reading parameter file %s\n", paramfile);
            return ((void*)0);
        }
        if (*pkey_type == -1) {
            *pkey_type = EVP_PKEY_id(param);
        } else if (*pkey_type != EVP_PKEY_base_id(param)) {
            BIO_printf(bio_err, "Key Type does not match parameters\n");
            EVP_PKEY_free(param);
            return ((void*)0);
        }
    }

    if (palgnam != ((void*)0)) {
        const EVP_PKEY_ASN1_METHOD *ameth;
        ENGINE *tmpeng;
        const char *anam;

        ameth = EVP_PKEY_asn1_find(&tmpeng, *pkey_type);
        if (ameth == ((void*)0)) {
            BIO_puts(bio_err, "Internal error: can't find key algorithm\n");
            return ((void*)0);
        }
        EVP_PKEY_asn1_get0_info(((void*)0), ((void*)0), ((void*)0), ((void*)0), &anam, ameth);
        *palgnam = OPENSSL_strdup(anam);

        ENGINE_finish(tmpeng);

    }

    if (param != ((void*)0)) {
        gctx = EVP_PKEY_CTX_new(param, keygen_engine);
        *pkeylen = EVP_PKEY_bits(param);
        EVP_PKEY_free(param);
    } else {
        gctx = EVP_PKEY_CTX_new_id(*pkey_type, keygen_engine);
    }

    if (gctx == ((void*)0)) {
        BIO_puts(bio_err, "Error allocating keygen context\n");
        ERR_print_errors(bio_err);
        return ((void*)0);
    }

    if (EVP_PKEY_keygen_init(gctx) <= 0) {
        BIO_puts(bio_err, "Error initializing keygen context\n");
        ERR_print_errors(bio_err);
        EVP_PKEY_CTX_free(gctx);
        return ((void*)0);
    }

    if ((*pkey_type == EVP_PKEY_RSA) && (keylen != -1)) {
        if (EVP_PKEY_CTX_set_rsa_keygen_bits(gctx, keylen) <= 0) {
            BIO_puts(bio_err, "Error setting RSA keysize\n");
            ERR_print_errors(bio_err);
            EVP_PKEY_CTX_free(gctx);
            return ((void*)0);
        }
    }


    return gctx;
}
