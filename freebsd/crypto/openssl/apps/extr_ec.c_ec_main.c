
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int point_conversion_form_t ;
typedef int OPTION_CHOICE ;
typedef int EVP_PKEY ;
typedef int EVP_CIPHER ;
typedef int ENGINE ;
typedef int EC_KEY ;
typedef int EC_GROUP ;
typedef int BIO ;


 int BIO_free (int *) ;
 int BIO_free_all (int *) ;
 int BIO_printf (int ,char*,...) ;
 int EC_KEY_check_key (int *) ;
 int EC_KEY_free (int *) ;
 int * EC_KEY_get0_group (int *) ;
 int EC_KEY_print (int *,int *,int ) ;
 int EC_KEY_set_asn1_flag (int *,int) ;
 int EC_KEY_set_conv_form (int *,int) ;
 int EC_KEY_set_enc_flags (int *,int ) ;
 int EC_PKEY_NO_PUBKEY ;
 int ERR_print_errors (int ) ;
 int EVP_PKEY_free (int *) ;
 int * EVP_PKEY_get1_EC_KEY (int *) ;
 int FORMAT_ASN1 ;
 int FORMAT_ENGINE ;
 int FORMAT_PEM ;
 int OPENSSL_EC_NAMED_CURVE ;
 int OPENSSL_free (char*) ;






 int OPT_FMT_ANY ;
 int OPT_FMT_PEMDER ;
 int * PEM_read_bio_ECPrivateKey (int *,int *,int *,char*) ;
 int * PEM_read_bio_EC_PUBKEY (int *,int *,int *,int *) ;
 int PEM_write_bio_ECPKParameters (int *,int const*) ;
 int PEM_write_bio_ECPrivateKey (int *,int *,int const*,int *,int ,int *,char*) ;
 int PEM_write_bio_EC_PUBKEY (int *,int *) ;
 int POINT_CONVERSION_UNCOMPRESSED ;
 int app_passwd (char*,char*,char**,char**) ;
 int assert (int) ;
 int bio_err ;
 int * bio_open_default (char*,char,int) ;
 int * bio_open_owner (char*,int,int) ;
 int conv_forms ;
 int * d2i_ECPrivateKey_bio (int *,int *) ;
 int * d2i_EC_PUBKEY_bio (int *,int *) ;
 int ec_options ;
 int i2d_ECPKParameters_bio (int *,int const*) ;
 int i2d_ECPrivateKey_bio (int *,int *) ;
 int i2d_EC_PUBKEY_bio (int *,int *) ;
 int * load_key (char*,int,int,char*,int *,char*) ;
 int * load_pubkey (char*,int,int,char*,int *,char*) ;
 char* opt_arg () ;
 int opt_cipher (int ,int const**) ;
 int opt_format (char*,int ,int*) ;
 int opt_help (int ) ;
 char* opt_init (int,char**,int ) ;
 int opt_next () ;
 int opt_num_rest () ;
 int opt_pair (char*,int ,int*) ;
 int opt_unknown () ;
 int param_enc ;
 int perror (char*) ;
 int release_engine (int *) ;
 int * setup_engine (char*,int ) ;

int ec_main(int argc, char **argv)
{
    BIO *in = ((void*)0), *out = ((void*)0);
    ENGINE *e = ((void*)0);
    EC_KEY *eckey = ((void*)0);
    const EC_GROUP *group;
    const EVP_CIPHER *enc = ((void*)0);
    point_conversion_form_t form = POINT_CONVERSION_UNCOMPRESSED;
    char *infile = ((void*)0), *outfile = ((void*)0), *prog;
    char *passin = ((void*)0), *passout = ((void*)0), *passinarg = ((void*)0), *passoutarg = ((void*)0);
    OPTION_CHOICE o;
    int asn1_flag = OPENSSL_EC_NAMED_CURVE, new_form = 0, new_asn1_flag = 0;
    int informat = FORMAT_PEM, outformat = FORMAT_PEM, text = 0, noout = 0;
    int pubin = 0, pubout = 0, param_out = 0, i, ret = 1, private = 0;
    int no_public = 0, check = 0;

    prog = opt_init(argc, argv, ec_options);
    while ((o = opt_next()) != 143) {
        switch (o) {
        case 143:
        case 142:
 opthelp:
            BIO_printf(bio_err, "%s: Use -help for summary.\n", prog);
            goto end;
        case 141:
            opt_help(ec_options);
            ret = 0;
            goto end;
        case 139:
            if (!opt_format(opt_arg(), OPT_FMT_ANY, &informat))
                goto opthelp;
            break;
        case 140:
            infile = opt_arg();
            break;
        case 135:
            if (!opt_format(opt_arg(), OPT_FMT_PEMDER, &outformat))
                goto opthelp;
            break;
        case 136:
            outfile = opt_arg();
            break;
        case 138:
            noout = 1;
            break;
        case 128:
            text = 1;
            break;
        case 133:
            param_out = 1;
            break;
        case 130:
            pubin = 1;
            break;
        case 129:
            pubout = 1;
            break;
        case 132:
            passinarg = opt_arg();
            break;
        case 131:
            passoutarg = opt_arg();
            break;
        case 144:
            e = setup_engine(opt_arg(), 0);
            break;
        case 146:
            if (!opt_cipher(opt_unknown(), &enc))
                goto opthelp;
            break;
        case 145:
            if (!opt_pair(opt_arg(), conv_forms, &i))
                goto opthelp;
            new_form = 1;
            form = i;
            break;
        case 134:
            if (!opt_pair(opt_arg(), param_enc, &i))
                goto opthelp;
            new_asn1_flag = 1;
            asn1_flag = i;
            break;
        case 137:
            no_public = 1;
            break;
        case 147:
            check = 1;
            break;
        }
    }
    argc = opt_num_rest();
    if (argc != 0)
        goto opthelp;

    private = param_out || pubin || pubout ? 0 : 1;
    if (text && !pubin)
        private = 1;

    if (!app_passwd(passinarg, passoutarg, &passin, &passout)) {
        BIO_printf(bio_err, "Error getting passwords\n");
        goto end;
    }

    if (informat != FORMAT_ENGINE) {
        in = bio_open_default(infile, 'r', informat);
        if (in == ((void*)0))
            goto end;
    }

    BIO_printf(bio_err, "read EC key\n");
    if (informat == FORMAT_ASN1) {
        if (pubin)
            eckey = d2i_EC_PUBKEY_bio(in, ((void*)0));
        else
            eckey = d2i_ECPrivateKey_bio(in, ((void*)0));
    } else if (informat == FORMAT_ENGINE) {
        EVP_PKEY *pkey;
        if (pubin)
            pkey = load_pubkey(infile, informat, 1, passin, e, "Public Key");
        else
            pkey = load_key(infile, informat, 1, passin, e, "Private Key");
        if (pkey != ((void*)0)) {
            eckey = EVP_PKEY_get1_EC_KEY(pkey);
            EVP_PKEY_free(pkey);
        }
    } else {
        if (pubin)
            eckey = PEM_read_bio_EC_PUBKEY(in, ((void*)0), ((void*)0), ((void*)0));
        else
            eckey = PEM_read_bio_ECPrivateKey(in, ((void*)0), ((void*)0), passin);
    }
    if (eckey == ((void*)0)) {
        BIO_printf(bio_err, "unable to load Key\n");
        ERR_print_errors(bio_err);
        goto end;
    }

    out = bio_open_owner(outfile, outformat, private);
    if (out == ((void*)0))
        goto end;

    group = EC_KEY_get0_group(eckey);

    if (new_form)
        EC_KEY_set_conv_form(eckey, form);

    if (new_asn1_flag)
        EC_KEY_set_asn1_flag(eckey, asn1_flag);

    if (no_public)
        EC_KEY_set_enc_flags(eckey, EC_PKEY_NO_PUBKEY);

    if (text) {
        assert(pubin || private);
        if (!EC_KEY_print(out, eckey, 0)) {
            perror(outfile);
            ERR_print_errors(bio_err);
            goto end;
        }
    }

    if (check) {
        if (EC_KEY_check_key(eckey) == 1) {
            BIO_printf(bio_err, "EC Key valid.\n");
        } else {
            BIO_printf(bio_err, "EC Key Invalid!\n");
            ERR_print_errors(bio_err);
        }
    }

    if (noout) {
        ret = 0;
        goto end;
    }

    BIO_printf(bio_err, "writing EC key\n");
    if (outformat == FORMAT_ASN1) {
        if (param_out) {
            i = i2d_ECPKParameters_bio(out, group);
        } else if (pubin || pubout) {
            i = i2d_EC_PUBKEY_bio(out, eckey);
        } else {
            assert(private);
            i = i2d_ECPrivateKey_bio(out, eckey);
        }
    } else {
        if (param_out) {
            i = PEM_write_bio_ECPKParameters(out, group);
        } else if (pubin || pubout) {
            i = PEM_write_bio_EC_PUBKEY(out, eckey);
        } else {
            assert(private);
            i = PEM_write_bio_ECPrivateKey(out, eckey, enc,
                                           ((void*)0), 0, ((void*)0), passout);
        }
    }

    if (!i) {
        BIO_printf(bio_err, "unable to write private key\n");
        ERR_print_errors(bio_err);
    } else {
        ret = 0;
    }
 end:
    BIO_free(in);
    BIO_free_all(out);
    EC_KEY_free(eckey);
    release_engine(e);
    OPENSSL_free(passin);
    OPENSSL_free(passout);
    return ret;
}
