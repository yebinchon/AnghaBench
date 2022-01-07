
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RSA ;
typedef int OPTION_CHOICE ;
typedef int EVP_PKEY ;
typedef int EVP_CIPHER ;
typedef int ENGINE ;
typedef int BIO ;
typedef int BIGNUM ;


 int BIO_free_all (int *) ;
 int BIO_printf (int *,char*,...) ;
 int BN_print (int *,int const*) ;
 scalar_t__ ERR_GET_FUNC (unsigned long) ;
 scalar_t__ ERR_GET_LIB (unsigned long) ;
 scalar_t__ ERR_GET_REASON (unsigned long) ;
 scalar_t__ ERR_LIB_RSA ;
 scalar_t__ ERR_R_MALLOC_FAILURE ;
 int ERR_get_error () ;
 unsigned long ERR_peek_error () ;
 int ERR_print_errors (int *) ;
 int ERR_reason_error_string (unsigned long) ;
 int EVP_PKEY_free (int *) ;
 int * EVP_PKEY_get1_RSA (int *) ;
 int * EVP_PKEY_new () ;
 int EVP_PKEY_set1_RSA (int *,int *) ;
 int FORMAT_ASN1 ;
 int FORMAT_ASN1RSA ;
 int FORMAT_MSBLOB ;
 int FORMAT_PEM ;
 int FORMAT_PEMRSA ;
 int FORMAT_PVK ;
 int OPENSSL_free (char*) ;





 int OPT_FMT_ANY ;
 int PEM_write_bio_RSAPrivateKey (int *,int *,int const*,int *,int ,int *,char*) ;
 int PEM_write_bio_RSAPublicKey (int *,int *) ;
 int PEM_write_bio_RSA_PUBKEY (int *,int *) ;
 scalar_t__ RSA_F_RSA_CHECK_KEY_EX ;
 int RSA_check_key_ex (int *,int *) ;
 int RSA_free (int *) ;
 int RSA_get0_key (int *,int const**,int *,int *) ;
 int RSA_print (int *,int *,int ) ;
 int app_passwd (char*,char*,char**,char**) ;
 int assert (int) ;
 int * bio_err ;
 int * bio_open_owner (char*,int,int) ;
 int i2b_PVK_bio (int *,int *,int,int ,char*) ;
 int i2b_PrivateKey_bio (int *,int *) ;
 int i2b_PublicKey_bio (int *,int *) ;
 int i2d_RSAPrivateKey_bio (int *,int *) ;
 int i2d_RSAPublicKey_bio (int *,int *) ;
 int i2d_RSA_PUBKEY_bio (int *,int *) ;
 int * load_key (char*,int,int,char*,int *,char*) ;
 int * load_pubkey (char*,int,int,char*,int *,char*) ;
 char* opt_arg () ;
 int opt_cipher (int ,int const**) ;
 int opt_format (char*,int ,int*) ;
 int opt_help (int ) ;
 char* opt_init (int,char**,int ) ;
 int opt_next () ;
 int opt_num_rest () ;
 int opt_unknown () ;
 int perror (char*) ;
 int release_engine (int *) ;
 int rsa_options ;
 int * setup_engine (char*,int ) ;

int rsa_main(int argc, char **argv)
{
    ENGINE *e = ((void*)0);
    BIO *out = ((void*)0);
    RSA *rsa = ((void*)0);
    const EVP_CIPHER *enc = ((void*)0);
    char *infile = ((void*)0), *outfile = ((void*)0), *prog;
    char *passin = ((void*)0), *passout = ((void*)0), *passinarg = ((void*)0), *passoutarg = ((void*)0);
    int i, private = 0;
    int informat = FORMAT_PEM, outformat = FORMAT_PEM, text = 0, check = 0;
    int noout = 0, modulus = 0, pubin = 0, pubout = 0, ret = 1;

    int pvk_encr = 2;

    OPTION_CHOICE o;

    prog = opt_init(argc, argv, rsa_options);
    while ((o = opt_next()) != 146) {
        switch (o) {
        case 146:
        case 145:
 opthelp:
            BIO_printf(bio_err, "%s: Use -help for summary.\n", prog);
            goto end;
        case 144:
            opt_help(rsa_options);
            ret = 0;
            goto end;
        case 142:
            if (!opt_format(opt_arg(), OPT_FMT_ANY, &informat))
                goto opthelp;
            break;
        case 143:
            infile = opt_arg();
            break;
        case 138:
            if (!opt_format(opt_arg(), OPT_FMT_ANY, &outformat))
                goto opthelp;
            break;
        case 139:
            outfile = opt_arg();
            break;
        case 137:
            passinarg = opt_arg();
            break;
        case 136:
            passoutarg = opt_arg();
            break;
        case 147:
            e = setup_engine(opt_arg(), 0);
            break;
        case 135:
            pubin = 1;
            break;
        case 134:
            pubout = 1;
            break;
        case 130:
            pubin = 2;
            break;
        case 129:
            pubout = 2;
            break;
        case 132:
        case 131:
        case 133:

            pvk_encr = (o - 133);

            break;
        case 140:
            noout = 1;
            break;
        case 128:
            text = 1;
            break;
        case 141:
            modulus = 1;
            break;
        case 149:
            check = 1;
            break;
        case 148:
            if (!opt_cipher(opt_unknown(), &enc))
                goto opthelp;
            break;
        }
    }
    argc = opt_num_rest();
    if (argc != 0)
        goto opthelp;

    private = (text && !pubin) || (!pubout && !noout) ? 1 : 0;

    if (!app_passwd(passinarg, passoutarg, &passin, &passout)) {
        BIO_printf(bio_err, "Error getting passwords\n");
        goto end;
    }
    if (check && pubin) {
        BIO_printf(bio_err, "Only private keys can be checked\n");
        goto end;
    }

    {
        EVP_PKEY *pkey;

        if (pubin) {
            int tmpformat = -1;
            if (pubin == 2) {
                if (informat == FORMAT_PEM)
                    tmpformat = FORMAT_PEMRSA;
                else if (informat == FORMAT_ASN1)
                    tmpformat = FORMAT_ASN1RSA;
            } else {
                tmpformat = informat;
            }

            pkey = load_pubkey(infile, tmpformat, 1, passin, e, "Public Key");
        } else {
            pkey = load_key(infile, informat, 1, passin, e, "Private Key");
        }

        if (pkey != ((void*)0))
            rsa = EVP_PKEY_get1_RSA(pkey);
        EVP_PKEY_free(pkey);
    }

    if (rsa == ((void*)0)) {
        ERR_print_errors(bio_err);
        goto end;
    }

    out = bio_open_owner(outfile, outformat, private);
    if (out == ((void*)0))
        goto end;

    if (text) {
        assert(pubin || private);
        if (!RSA_print(out, rsa, 0)) {
            perror(outfile);
            ERR_print_errors(bio_err);
            goto end;
        }
    }

    if (modulus) {
        const BIGNUM *n;
        RSA_get0_key(rsa, &n, ((void*)0), ((void*)0));
        BIO_printf(out, "Modulus=");
        BN_print(out, n);
        BIO_printf(out, "\n");
    }

    if (check) {
        int r = RSA_check_key_ex(rsa, ((void*)0));

        if (r == 1) {
            BIO_printf(out, "RSA key ok\n");
        } else if (r == 0) {
            unsigned long err;

            while ((err = ERR_peek_error()) != 0 &&
                   ERR_GET_LIB(err) == ERR_LIB_RSA &&
                   ERR_GET_FUNC(err) == RSA_F_RSA_CHECK_KEY_EX &&
                   ERR_GET_REASON(err) != ERR_R_MALLOC_FAILURE) {
                BIO_printf(out, "RSA key error: %s\n",
                           ERR_reason_error_string(err));
                ERR_get_error();
            }
        } else if (r == -1) {
            ERR_print_errors(bio_err);
            goto end;
        }
    }

    if (noout) {
        ret = 0;
        goto end;
    }
    BIO_printf(bio_err, "writing RSA key\n");
    if (outformat == FORMAT_ASN1) {
        if (pubout || pubin) {
            if (pubout == 2)
                i = i2d_RSAPublicKey_bio(out, rsa);
            else
                i = i2d_RSA_PUBKEY_bio(out, rsa);
        } else {
            assert(private);
            i = i2d_RSAPrivateKey_bio(out, rsa);
        }
    } else if (outformat == FORMAT_PEM) {
        if (pubout || pubin) {
            if (pubout == 2)
                i = PEM_write_bio_RSAPublicKey(out, rsa);
            else
                i = PEM_write_bio_RSA_PUBKEY(out, rsa);
        } else {
            assert(private);
            i = PEM_write_bio_RSAPrivateKey(out, rsa,
                                            enc, ((void*)0), 0, ((void*)0), passout);
        }

    } else if (outformat == FORMAT_MSBLOB || outformat == FORMAT_PVK) {
        EVP_PKEY *pk;
        pk = EVP_PKEY_new();
        if (pk == ((void*)0))
            goto end;

        EVP_PKEY_set1_RSA(pk, rsa);
        if (outformat == FORMAT_PVK) {
            if (pubin) {
                BIO_printf(bio_err, "PVK form impossible with public key input\n");
                EVP_PKEY_free(pk);
                goto end;
            }
            assert(private);





            i = i2b_PVK_bio(out, pk, pvk_encr, 0, passout);

        } else if (pubin || pubout) {
            i = i2b_PublicKey_bio(out, pk);
        } else {
            assert(private);
            i = i2b_PrivateKey_bio(out, pk);
        }
        EVP_PKEY_free(pk);

    } else {
        BIO_printf(bio_err, "bad output format specified for outfile\n");
        goto end;
    }
    if (i <= 0) {
        BIO_printf(bio_err, "unable to write key\n");
        ERR_print_errors(bio_err);
    } else {
        ret = 0;
    }
 end:
    release_engine(e);
    BIO_free_all(out);
    RSA_free(rsa);
    OPENSSL_free(passin);
    OPENSSL_free(passout);
    return ret;
}
