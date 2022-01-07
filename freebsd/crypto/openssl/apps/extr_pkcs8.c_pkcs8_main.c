
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pass ;
typedef int X509_SIG ;
typedef int X509_ALGOR ;
typedef int PKCS8_PRIV_KEY_INFO ;
typedef int OPTION_CHOICE ;
typedef int EVP_PKEY ;
typedef int EVP_CIPHER ;
typedef int ENGINE ;
typedef int BIO ;


 int APP_PASS_LEN ;
 int BIO_free (int *) ;
 int BIO_free_all (int *) ;
 int BIO_printf (int ,char*,...) ;
 int ERR_print_errors (int ) ;
 int EVP_PBE_TYPE_PRF ;
 int EVP_PBE_find (int ,int,int *,int *,int ) ;
 int * EVP_PKCS82PKEY (int *) ;
 int * EVP_PKEY2PKCS8 (int *) ;
 int EVP_PKEY_free (int *) ;
 int * EVP_aes_256_cbc () ;
 scalar_t__ EVP_read_pw_string (char*,int,char*,int) ;
 int FORMAT_ASN1 ;
 int FORMAT_PEM ;
 int NID_undef ;
 int OBJ_txt2nid (char*) ;
 int OPENSSL_free (char*) ;



 int OPT_FMT_PEMDER ;
 int * PEM_read_bio_PKCS8 (int *,int *,int *,int *) ;
 int * PEM_read_bio_PKCS8_PRIV_KEY_INFO (int *,int *,int *,int *) ;
 int PEM_write_bio_PKCS8 (int *,int *) ;
 int PEM_write_bio_PKCS8_PRIV_KEY_INFO (int *,int *) ;
 int PEM_write_bio_PrivateKey (int *,int *,int *,int *,int ,int *,char*) ;
 int PEM_write_bio_PrivateKey_traditional (int *,int *,int *,int *,int ,int *,char*) ;
 int PKCS12_DEFAULT_ITER ;
 int * PKCS5_pbe2_set_iv (int const*,int,int *,int ,int *,int) ;
 int * PKCS5_pbe2_set_scrypt (int const*,int *,int ,int *,long,long,long) ;
 int * PKCS5_pbe_set (int,int,int *,int ) ;
 int PKCS8_PRIV_KEY_INFO_free (int *) ;
 int * PKCS8_decrypt (int *,char*,int ) ;
 int * PKCS8_set0_pbe (char*,int ,int *,int *) ;
 int X509_ALGOR_free (int *) ;
 int X509_SIG_free (int *) ;
 int app_passwd (char*,char*,char**,char**) ;
 int assert (int) ;
 int bio_err ;
 int * bio_open_default (char*,char,int) ;
 int * bio_open_owner (char*,int,int) ;
 int * d2i_PKCS8_PRIV_KEY_INFO_bio (int *,int *) ;
 int * d2i_PKCS8_bio (int *,int *) ;
 int i2d_PKCS8_PRIV_KEY_INFO_bio (int *,int *) ;
 int i2d_PKCS8_bio (int *,int *) ;
 int i2d_PrivateKey_bio (int *,int *) ;
 int * load_key (char*,int,int,char*,int *,char*) ;
 char* opt_arg () ;
 int opt_cipher (char*,int const**) ;
 int opt_format (char*,int ,int*) ;
 int opt_help (int ) ;
 char* opt_init (int,char**,int ) ;
 int opt_int (char*,int*) ;
 int opt_long (char*,long*) ;
 int opt_next () ;
 int opt_num_rest () ;
 int opt_rand (int) ;
 int pkcs8_options ;
 int release_engine (int *) ;
 int * setup_engine (char*,int ) ;
 int strlen (char*) ;

int pkcs8_main(int argc, char **argv)
{
    BIO *in = ((void*)0), *out = ((void*)0);
    ENGINE *e = ((void*)0);
    EVP_PKEY *pkey = ((void*)0);
    PKCS8_PRIV_KEY_INFO *p8inf = ((void*)0);
    X509_SIG *p8 = ((void*)0);
    const EVP_CIPHER *cipher = ((void*)0);
    char *infile = ((void*)0), *outfile = ((void*)0);
    char *passinarg = ((void*)0), *passoutarg = ((void*)0), *prog;

    char pass[APP_PASS_LEN];

    char *passin = ((void*)0), *passout = ((void*)0), *p8pass = ((void*)0);
    OPTION_CHOICE o;
    int nocrypt = 0, ret = 1, iter = PKCS12_DEFAULT_ITER;
    int informat = FORMAT_PEM, outformat = FORMAT_PEM, topk8 = 0, pbe_nid = -1;
    int private = 0, traditional = 0;

    long scrypt_N = 0, scrypt_r = 0, scrypt_p = 0;


    prog = opt_init(argc, argv, pkcs8_options);
    while ((o = opt_next()) != 149) {
        switch (o) {
        case 149:
        case 148:
 opthelp:
            BIO_printf(bio_err, "%s: Use -help for summary.\n", prog);
            goto end;
        case 147:
            opt_help(pkcs8_options);
            ret = 0;
            goto end;
        case 145:
            if (!opt_format(opt_arg(), OPT_FMT_PEMDER, &informat))
                goto opthelp;
            break;
        case 146:
            infile = opt_arg();
            break;
        case 140:
            if (!opt_format(opt_arg(), OPT_FMT_PEMDER, &outformat))
                goto opthelp;
            break;
        case 141:
            outfile = opt_arg();
            break;
        case 132:
            topk8 = 1;
            break;
        case 142:
            iter = 1;
            break;
        case 143:
            nocrypt = 1;
            break;
        case 137:
            if (!opt_rand(o))
                goto end;
            break;
        case 131:
            traditional = 1;
            break;
        case 129:
            if (!opt_cipher(opt_arg(), &cipher))
                goto opthelp;
            break;
        case 130:
            pbe_nid = OBJ_txt2nid(opt_arg());
            if (pbe_nid == NID_undef) {
                BIO_printf(bio_err,
                           "%s: Unknown PBE algorithm %s\n", prog, opt_arg());
                goto opthelp;
            }
            break;
        case 128:
            pbe_nid = OBJ_txt2nid(opt_arg());
            if (!EVP_PBE_find(EVP_PBE_TYPE_PRF, pbe_nid, ((void*)0), ((void*)0), 0)) {
                BIO_printf(bio_err,
                           "%s: Unknown PRF algorithm %s\n", prog, opt_arg());
                goto opthelp;
            }
            if (cipher == ((void*)0))
                cipher = EVP_aes_256_cbc();
            break;
        case 144:
            if (!opt_int(opt_arg(), &iter))
                goto opthelp;
            break;
        case 139:
            passinarg = opt_arg();
            break;
        case 138:
            passoutarg = opt_arg();
            break;
        case 150:
            e = setup_engine(opt_arg(), 0);
            break;

        case 136:
            scrypt_N = 16384;
            scrypt_r = 8;
            scrypt_p = 1;
            if (cipher == ((void*)0))
                cipher = EVP_aes_256_cbc();
            break;
        case 135:
            if (!opt_long(opt_arg(), &scrypt_N) || scrypt_N <= 0)
                goto opthelp;
            break;
        case 133:
            if (!opt_long(opt_arg(), &scrypt_r) || scrypt_r <= 0)
                goto opthelp;
            break;
        case 134:
            if (!opt_long(opt_arg(), &scrypt_p) || scrypt_p <= 0)
                goto opthelp;
            break;

        }
    }
    argc = opt_num_rest();
    if (argc != 0)
        goto opthelp;

    private = 1;

    if (!app_passwd(passinarg, passoutarg, &passin, &passout)) {
        BIO_printf(bio_err, "Error getting passwords\n");
        goto end;
    }

    if ((pbe_nid == -1) && cipher == ((void*)0))
        cipher = EVP_aes_256_cbc();

    in = bio_open_default(infile, 'r', informat);
    if (in == ((void*)0))
        goto end;
    out = bio_open_owner(outfile, outformat, private);
    if (out == ((void*)0))
        goto end;

    if (topk8) {
        pkey = load_key(infile, informat, 1, passin, e, "key");
        if (pkey == ((void*)0))
            goto end;
        if ((p8inf = EVP_PKEY2PKCS8(pkey)) == ((void*)0)) {
            BIO_printf(bio_err, "Error converting key\n");
            ERR_print_errors(bio_err);
            goto end;
        }
        if (nocrypt) {
            assert(private);
            if (outformat == FORMAT_PEM) {
                PEM_write_bio_PKCS8_PRIV_KEY_INFO(out, p8inf);
            } else if (outformat == FORMAT_ASN1) {
                i2d_PKCS8_PRIV_KEY_INFO_bio(out, p8inf);
            } else {
                BIO_printf(bio_err, "Bad format specified for key\n");
                goto end;
            }
        } else {
            X509_ALGOR *pbe;
            if (cipher) {

                if (scrypt_N && scrypt_r && scrypt_p)
                    pbe = PKCS5_pbe2_set_scrypt(cipher, ((void*)0), 0, ((void*)0),
                                                scrypt_N, scrypt_r, scrypt_p);
                else

                    pbe = PKCS5_pbe2_set_iv(cipher, iter, ((void*)0), 0, ((void*)0),
                                            pbe_nid);
            } else {
                pbe = PKCS5_pbe_set(pbe_nid, iter, ((void*)0), 0);
            }
            if (pbe == ((void*)0)) {
                BIO_printf(bio_err, "Error setting PBE algorithm\n");
                ERR_print_errors(bio_err);
                goto end;
            }
            if (passout != ((void*)0)) {
                p8pass = passout;
            } else if (1) {


                p8pass = pass;
                if (EVP_read_pw_string
                    (pass, sizeof(pass), "Enter Encryption Password:", 1)) {
                    X509_ALGOR_free(pbe);
                    goto end;
                }
            } else {

                BIO_printf(bio_err, "Password required\n");
                goto end;
            }
            p8 = PKCS8_set0_pbe(p8pass, strlen(p8pass), p8inf, pbe);
            if (p8 == ((void*)0)) {
                X509_ALGOR_free(pbe);
                BIO_printf(bio_err, "Error encrypting key\n");
                ERR_print_errors(bio_err);
                goto end;
            }
            assert(private);
            if (outformat == FORMAT_PEM)
                PEM_write_bio_PKCS8(out, p8);
            else if (outformat == FORMAT_ASN1)
                i2d_PKCS8_bio(out, p8);
            else {
                BIO_printf(bio_err, "Bad format specified for key\n");
                goto end;
            }
        }

        ret = 0;
        goto end;
    }

    if (nocrypt) {
        if (informat == FORMAT_PEM) {
            p8inf = PEM_read_bio_PKCS8_PRIV_KEY_INFO(in, ((void*)0), ((void*)0), ((void*)0));
        } else if (informat == FORMAT_ASN1) {
            p8inf = d2i_PKCS8_PRIV_KEY_INFO_bio(in, ((void*)0));
        } else {
            BIO_printf(bio_err, "Bad format specified for key\n");
            goto end;
        }
    } else {
        if (informat == FORMAT_PEM) {
            p8 = PEM_read_bio_PKCS8(in, ((void*)0), ((void*)0), ((void*)0));
        } else if (informat == FORMAT_ASN1) {
            p8 = d2i_PKCS8_bio(in, ((void*)0));
        } else {
            BIO_printf(bio_err, "Bad format specified for key\n");
            goto end;
        }

        if (p8 == ((void*)0)) {
            BIO_printf(bio_err, "Error reading key\n");
            ERR_print_errors(bio_err);
            goto end;
        }
        if (passin != ((void*)0)) {
            p8pass = passin;
        } else if (1) {

            p8pass = pass;
            if (EVP_read_pw_string(pass, sizeof(pass), "Enter Password:", 0)) {
                BIO_printf(bio_err, "Can't read Password\n");
                goto end;
            }
        } else {

            BIO_printf(bio_err, "Password required\n");
            goto end;
        }
        p8inf = PKCS8_decrypt(p8, p8pass, strlen(p8pass));
    }

    if (p8inf == ((void*)0)) {
        BIO_printf(bio_err, "Error decrypting key\n");
        ERR_print_errors(bio_err);
        goto end;
    }

    if ((pkey = EVP_PKCS82PKEY(p8inf)) == ((void*)0)) {
        BIO_printf(bio_err, "Error converting key\n");
        ERR_print_errors(bio_err);
        goto end;
    }

    assert(private);
    if (outformat == FORMAT_PEM) {
        if (traditional)
            PEM_write_bio_PrivateKey_traditional(out, pkey, ((void*)0), ((void*)0), 0,
                                                 ((void*)0), passout);
        else
            PEM_write_bio_PrivateKey(out, pkey, ((void*)0), ((void*)0), 0, ((void*)0), passout);
    } else if (outformat == FORMAT_ASN1) {
        i2d_PrivateKey_bio(out, pkey);
    } else {
        BIO_printf(bio_err, "Bad format specified for key\n");
        goto end;
    }
    ret = 0;

 end:
    X509_SIG_free(p8);
    PKCS8_PRIV_KEY_INFO_free(p8inf);
    EVP_PKEY_free(pkey);
    release_engine(e);
    BIO_free_all(out);
    BIO_free(in);
    OPENSSL_free(passin);
    OPENSSL_free(passout);

    return ret;
}
