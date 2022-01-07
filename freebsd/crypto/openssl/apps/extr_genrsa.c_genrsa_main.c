
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pem_password_cb ;
struct TYPE_3__ {char* password; char* prompt_info; } ;
typedef int RSA ;
typedef TYPE_1__ PW_CB_DATA ;
typedef int OPTION_CHOICE ;
typedef int EVP_CIPHER ;
typedef int ENGINE ;
typedef int BN_GENCB ;
typedef int BIO ;
typedef int BIGNUM ;


 int BIO_free_all (int *) ;
 int BIO_printf (int ,char*,...) ;
 int BN_GENCB_free (int *) ;
 int * BN_GENCB_new () ;
 int BN_GENCB_set (int *,int ,int ) ;
 char* BN_bn2dec (int const*) ;
 char* BN_bn2hex (int const*) ;
 int BN_free (int *) ;
 int * BN_new () ;
 int BN_set_word (int *,unsigned long) ;
 int DEFBITS ;
 int DEFPRIMES ;
 int ERR_print_errors (int ) ;
 int FORMAT_PEM ;
 int OPENSSL_RSA_MAX_MODULUS_BITS ;
 int OPENSSL_free (char*) ;
 int PEM_write_bio_RSAPrivateKey (int *,int *,int const*,int *,int ,int *,TYPE_1__*) ;
 unsigned long RSA_F4 ;
 int RSA_free (int *) ;
 int RSA_generate_multi_prime_key (int *,int,int,int *,int *) ;
 int RSA_get0_key (int *,int *,int const**,int *) ;
 int * RSA_new () ;
 int * RSA_new_method (int *) ;
 int app_passwd (int *,char*,int *,char**) ;
 int assert (int) ;
 int bio_err ;
 int * bio_open_owner (char*,int ,int) ;
 int genrsa_cb ;
 int genrsa_options ;
 char* opt_arg () ;
 int opt_cipher (int ,int const**) ;
 int opt_help (int ) ;
 char* opt_init (int,char**,int ) ;
 int opt_int (char*,int*) ;
 int opt_next () ;
 int opt_num_rest () ;
 int opt_rand (int) ;
 char** opt_rest () ;
 int opt_unknown () ;
 scalar_t__ password_callback ;
 int release_engine (int *) ;
 int * setup_engine (char*,int ) ;

int genrsa_main(int argc, char **argv)
{
    BN_GENCB *cb = BN_GENCB_new();
    PW_CB_DATA cb_data;
    ENGINE *eng = ((void*)0);
    BIGNUM *bn = BN_new();
    BIO *out = ((void*)0);
    const BIGNUM *e;
    RSA *rsa = ((void*)0);
    const EVP_CIPHER *enc = ((void*)0);
    int ret = 1, num = DEFBITS, private = 0, primes = DEFPRIMES;
    unsigned long f4 = RSA_F4;
    char *outfile = ((void*)0), *passoutarg = ((void*)0), *passout = ((void*)0);
    char *prog, *hexe, *dece;
    OPTION_CHOICE o;

    if (bn == ((void*)0) || cb == ((void*)0))
        goto end;

    BN_GENCB_set(cb, genrsa_cb, bio_err);

    prog = opt_init(argc, argv, genrsa_options);
    while ((o = opt_next()) != 135) {
        switch (o) {
        case 135:
        case 134:
opthelp:
            BIO_printf(bio_err, "%s: Use -help for summary.\n", prog);
            goto end;
        case 132:
            ret = 0;
            opt_help(genrsa_options);
            goto end;
        case 138:
            f4 = 3;
            break;
        case 133:
            f4 = RSA_F4;
            break;
        case 131:
            outfile = opt_arg();
            break;
        case 136:
            eng = setup_engine(opt_arg(), 0);
            break;
        case 128:
            if (!opt_rand(o))
                goto end;
            break;
        case 130:
            passoutarg = opt_arg();
            break;
        case 137:
            if (!opt_cipher(opt_unknown(), &enc))
                goto end;
            break;
        case 129:
            if (!opt_int(opt_arg(), &primes))
                goto end;
            break;
        }
    }
    argc = opt_num_rest();
    argv = opt_rest();

    if (argc == 1) {
        if (!opt_int(argv[0], &num) || num <= 0)
            goto end;
        if (num > OPENSSL_RSA_MAX_MODULUS_BITS)
            BIO_printf(bio_err,
                       "Warning: It is not recommended to use more than %d bit for RSA keys.\n"
                       "         Your key size is %d! Larger key size may behave not as expected.\n",
                       OPENSSL_RSA_MAX_MODULUS_BITS, num);
    } else if (argc > 0) {
        BIO_printf(bio_err, "Extra arguments given.\n");
        goto opthelp;
    }

    private = 1;
    if (!app_passwd(((void*)0), passoutarg, ((void*)0), &passout)) {
        BIO_printf(bio_err, "Error getting password\n");
        goto end;
    }

    out = bio_open_owner(outfile, FORMAT_PEM, private);
    if (out == ((void*)0))
        goto end;

    BIO_printf(bio_err, "Generating RSA private key, %d bit long modulus (%d primes)\n",
               num, primes);
    rsa = eng ? RSA_new_method(eng) : RSA_new();
    if (rsa == ((void*)0))
        goto end;

    if (!BN_set_word(bn, f4)
        || !RSA_generate_multi_prime_key(rsa, num, primes, bn, cb))
        goto end;

    RSA_get0_key(rsa, ((void*)0), &e, ((void*)0));
    hexe = BN_bn2hex(e);
    dece = BN_bn2dec(e);
    if (hexe && dece) {
        BIO_printf(bio_err, "e is %s (0x%s)\n", dece, hexe);
    }
    OPENSSL_free(hexe);
    OPENSSL_free(dece);
    cb_data.password = passout;
    cb_data.prompt_info = outfile;
    assert(private);
    if (!PEM_write_bio_RSAPrivateKey(out, rsa, enc, ((void*)0), 0,
                                     (pem_password_cb *)password_callback,
                                     &cb_data))
        goto end;

    ret = 0;
 end:
    BN_free(bn);
    BN_GENCB_free(cb);
    RSA_free(rsa);
    BIO_free_all(out);
    release_engine(eng);
    OPENSSL_free(passout);
    if (ret != 0)
        ERR_print_errors(bio_err);
    return ret;
}
