
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPTION_CHOICE ;
typedef int EVP_CIPHER ;
typedef int ENGINE ;
typedef int DSA ;
typedef int BIO ;
typedef int BIGNUM ;


 int BIO_free (int *) ;
 int BIO_free_all (int *) ;
 int BIO_printf (int ,char*,...) ;
 scalar_t__ BN_num_bits (int const*) ;
 int DSA_free (int *) ;
 int DSA_generate_key (int *) ;
 int DSA_get0_pqg (int *,int const**,int *,int *) ;
 int ERR_print_errors (int ) ;
 int FORMAT_PEM ;
 scalar_t__ OPENSSL_DSA_MAX_MODULUS_BITS ;
 int OPENSSL_free (char*) ;
 int * PEM_read_bio_DSAparams (int *,int *,int *,int *) ;
 int PEM_write_bio_DSAPrivateKey (int *,int *,int const*,int *,int ,int *,char*) ;
 int app_passwd (int *,char*,int *,char**) ;
 int assert (int) ;
 int bio_err ;
 int * bio_open_default (char*,char,int ) ;
 int * bio_open_owner (char*,int ,int) ;
 int gendsa_options ;
 char* opt_arg () ;
 int opt_cipher (int ,int const**) ;
 int opt_help (int ) ;
 char* opt_init (int,char**,int ) ;
 int opt_next () ;
 int opt_num_rest () ;
 int opt_rand (int) ;
 char** opt_rest () ;
 int opt_unknown () ;
 int release_engine (int *) ;
 int * setup_engine (char*,int ) ;

int gendsa_main(int argc, char **argv)
{
    ENGINE *e = ((void*)0);
    BIO *out = ((void*)0), *in = ((void*)0);
    DSA *dsa = ((void*)0);
    const EVP_CIPHER *enc = ((void*)0);
    char *dsaparams = ((void*)0);
    char *outfile = ((void*)0), *passoutarg = ((void*)0), *passout = ((void*)0), *prog;
    OPTION_CHOICE o;
    int ret = 1, private = 0;
    const BIGNUM *p = ((void*)0);

    prog = opt_init(argc, argv, gendsa_options);
    while ((o = opt_next()) != 133) {
        switch (o) {
        case 133:
        case 132:
 opthelp:
            BIO_printf(bio_err, "%s: Use -help for summary.\n", prog);
            goto end;
        case 131:
            ret = 0;
            opt_help(gendsa_options);
            goto end;
        case 130:
            outfile = opt_arg();
            break;
        case 129:
            passoutarg = opt_arg();
            break;
        case 134:
            e = setup_engine(opt_arg(), 0);
            break;
        case 128:
            if (!opt_rand(o))
                goto end;
            break;
        case 135:
            if (!opt_cipher(opt_unknown(), &enc))
                goto end;
            break;
        }
    }
    argc = opt_num_rest();
    argv = opt_rest();
    private = 1;

    if (argc != 1)
        goto opthelp;
    dsaparams = *argv;

    if (!app_passwd(((void*)0), passoutarg, ((void*)0), &passout)) {
        BIO_printf(bio_err, "Error getting password\n");
        goto end;
    }

    in = bio_open_default(dsaparams, 'r', FORMAT_PEM);
    if (in == ((void*)0))
        goto end2;

    if ((dsa = PEM_read_bio_DSAparams(in, ((void*)0), ((void*)0), ((void*)0))) == ((void*)0)) {
        BIO_printf(bio_err, "unable to load DSA parameter file\n");
        goto end;
    }
    BIO_free(in);
    in = ((void*)0);

    out = bio_open_owner(outfile, FORMAT_PEM, private);
    if (out == ((void*)0))
        goto end2;

    DSA_get0_pqg(dsa, &p, ((void*)0), ((void*)0));

    if (BN_num_bits(p) > OPENSSL_DSA_MAX_MODULUS_BITS)
        BIO_printf(bio_err,
                   "Warning: It is not recommended to use more than %d bit for DSA keys.\n"
                   "         Your key size is %d! Larger key size may behave not as expected.\n",
                   OPENSSL_DSA_MAX_MODULUS_BITS, BN_num_bits(p));

    BIO_printf(bio_err, "Generating DSA key, %d bits\n", BN_num_bits(p));
    if (!DSA_generate_key(dsa))
        goto end;

    assert(private);
    if (!PEM_write_bio_DSAPrivateKey(out, dsa, enc, ((void*)0), 0, ((void*)0), passout))
        goto end;
    ret = 0;
 end:
    if (ret != 0)
        ERR_print_errors(bio_err);
 end2:
    BIO_free(in);
    BIO_free_all(out);
    DSA_free(dsa);
    release_engine(e);
    OPENSSL_free(passout);
    return ret;
}
