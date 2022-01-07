
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPTION_CHOICE ;
typedef int ENGINE ;
typedef int DSA ;
typedef int DH ;
typedef int BN_GENCB ;
typedef int BIO ;
typedef int BIGNUM ;


 int BIO_free (int *) ;
 int BIO_free_all (int *) ;
 int BIO_printf (int *,char*,...) ;
 scalar_t__ BIO_reset (int *) ;
 int BN_GENCB_free (int *) ;
 int * BN_GENCB_new () ;
 int BN_GENCB_set (int *,int ,int *) ;
 int DEFBITS ;
 int DH_CHECK_INVALID_J_VALUE ;
 int DH_CHECK_INVALID_Q_VALUE ;
 int DH_CHECK_P_NOT_PRIME ;
 int DH_CHECK_P_NOT_SAFE_PRIME ;
 int DH_CHECK_Q_NOT_PRIME ;
 int DH_NOT_SUITABLE_GENERATOR ;
 int DH_UNABLE_TO_CHECK_GENERATOR ;
 int DH_bits (int *) ;
 int DH_check (int *,int*) ;
 int DH_free (int *) ;
 int DH_generate_parameters_ex (int *,int,int,int *) ;
 int DH_get0_pqg (int *,int const**,int const**,int const**) ;
 int DH_get_length (int *) ;
 int * DH_new () ;
 int DH_size (int *) ;
 int DHparams_print (int *,int *) ;
 int * DSA_dup_DH (int *) ;
 int DSA_free (int *) ;
 int DSA_generate_parameters_ex (int *,int,int *,int ,int *,int *,int *) ;
 int * DSA_new () ;
 int ERR_print_errors (int *) ;
 int FORMAT_ASN1 ;
 int FORMAT_PEM ;
 int OPENSSL_free (unsigned char*) ;
 int OPT_FMT_PEMDER ;
 int * PEM_read_bio_DHparams (int *,int *,int *,int *) ;
 int * PEM_read_bio_DSAparams (int *,int *,int *,int *) ;
 int PEM_write_bio_DHparams (int *,int *) ;
 int PEM_write_bio_DHxparams (int *,int *) ;
 unsigned char* app_malloc (int,char*) ;
 int * bio_err ;
 int * bio_open_default (char*,char,int) ;
 int * d2i_DHparams_bio (int *,int *) ;
 int * d2i_DHxparams_bio (int *,int *) ;
 int * d2i_DSAparams_bio (int *,int *) ;
 int dh_cb ;
 int dhparam_options ;
 int i2d_DHparams_bio (int *,int *) ;
 int i2d_DHxparams_bio (int *,int *) ;
 char* opt_arg () ;
 int opt_format (char*,int ,int*) ;
 int opt_help (int ) ;
 char* opt_init (int,char**,int ) ;
 int opt_int (char*,int*) ;
 int opt_next () ;
 int opt_num_rest () ;
 int opt_rand (int) ;
 char** opt_rest () ;
 int print_bignum_var (int *,int const*,char*,int,unsigned char*) ;
 int release_engine (int *) ;
 int * setup_engine (char*,int ) ;

int dhparam_main(int argc, char **argv)
{
    BIO *in = ((void*)0), *out = ((void*)0);
    DH *dh = ((void*)0);
    char *infile = ((void*)0), *outfile = ((void*)0), *prog;
    ENGINE *e = ((void*)0);

    int dsaparam = 0;

    int i, text = 0, C = 0, ret = 1, num = 0, g = 0;
    int informat = FORMAT_PEM, outformat = FORMAT_PEM, check = 0, noout = 0;
    OPTION_CHOICE o;

    prog = opt_init(argc, argv, dhparam_options);
    while ((o = opt_next()) != 137) {
        switch (o) {
        case 137:
        case 136:
 opthelp:
            BIO_printf(bio_err, "%s: Use -help for summary.\n", prog);
            goto end;
        case 135:
            opt_help(dhparam_options);
            ret = 0;
            goto end;
        case 133:
            if (!opt_format(opt_arg(), OPT_FMT_PEMDER, &informat))
                goto opthelp;
            break;
        case 130:
            if (!opt_format(opt_arg(), OPT_FMT_PEMDER, &outformat))
                goto opthelp;
            break;
        case 134:
            infile = opt_arg();
            break;
        case 131:
            outfile = opt_arg();
            break;
        case 138:
            e = setup_engine(opt_arg(), 0);
            break;
        case 140:
            check = 1;
            break;
        case 128:
            text = 1;
            break;
        case 139:

            dsaparam = 1;

            break;
        case 141:
            C = 1;
            break;
        case 143:
            g = 2;
            break;
        case 142:
            g = 5;
            break;
        case 132:
            noout = 1;
            break;
        case 129:
            if (!opt_rand(o))
                goto end;
            break;
        }
    }
    argc = opt_num_rest();
    argv = opt_rest();

    if (argv[0] != ((void*)0) && (!opt_int(argv[0], &num) || num <= 0))
        goto end;

    if (g && !num)
        num = DEFBITS;


    if (dsaparam && g) {
        BIO_printf(bio_err,
                   "generator may not be chosen for DSA parameters\n");
        goto end;
    }


    out = bio_open_default(outfile, 'w', outformat);
    if (out == ((void*)0))
        goto end;


    if (num && !g)
        g = 2;

    if (num) {

        BN_GENCB *cb;
        cb = BN_GENCB_new();
        if (cb == ((void*)0)) {
            ERR_print_errors(bio_err);
            goto end;
        }

        BN_GENCB_set(cb, dh_cb, bio_err);


        if (dsaparam) {
            DSA *dsa = DSA_new();

            BIO_printf(bio_err,
                       "Generating DSA parameters, %d bit long prime\n", num);
            if (dsa == ((void*)0)
                || !DSA_generate_parameters_ex(dsa, num, ((void*)0), 0, ((void*)0), ((void*)0),
                                               cb)) {
                DSA_free(dsa);
                BN_GENCB_free(cb);
                ERR_print_errors(bio_err);
                goto end;
            }

            dh = DSA_dup_DH(dsa);
            DSA_free(dsa);
            if (dh == ((void*)0)) {
                BN_GENCB_free(cb);
                ERR_print_errors(bio_err);
                goto end;
            }
        } else

        {
            dh = DH_new();
            BIO_printf(bio_err,
                       "Generating DH parameters, %d bit long safe prime, generator %d\n",
                       num, g);
            BIO_printf(bio_err, "This is going to take a long time\n");
            if (dh == ((void*)0) || !DH_generate_parameters_ex(dh, num, g, cb)) {
                BN_GENCB_free(cb);
                ERR_print_errors(bio_err);
                goto end;
            }
        }

        BN_GENCB_free(cb);
    } else {

        in = bio_open_default(infile, 'r', informat);
        if (in == ((void*)0))
            goto end;


        if (dsaparam) {
            DSA *dsa;

            if (informat == FORMAT_ASN1)
                dsa = d2i_DSAparams_bio(in, ((void*)0));
            else
                dsa = PEM_read_bio_DSAparams(in, ((void*)0), ((void*)0), ((void*)0));

            if (dsa == ((void*)0)) {
                BIO_printf(bio_err, "unable to load DSA parameters\n");
                ERR_print_errors(bio_err);
                goto end;
            }

            dh = DSA_dup_DH(dsa);
            DSA_free(dsa);
            if (dh == ((void*)0)) {
                ERR_print_errors(bio_err);
                goto end;
            }
        } else

        {
            if (informat == FORMAT_ASN1) {




                dh = d2i_DHparams_bio(in, ((void*)0));

                if (dh == ((void*)0) && BIO_reset(in) == 0)
                    dh = d2i_DHxparams_bio(in, ((void*)0));
            } else {

                dh = PEM_read_bio_DHparams(in, ((void*)0), ((void*)0), ((void*)0));
            }

            if (dh == ((void*)0)) {
                BIO_printf(bio_err, "unable to load DH parameters\n");
                ERR_print_errors(bio_err);
                goto end;
            }
        }


    }

    if (text) {
        DHparams_print(out, dh);
    }

    if (check) {
        if (!DH_check(dh, &i)) {
            ERR_print_errors(bio_err);
            goto end;
        }
        if (i & DH_CHECK_P_NOT_PRIME)
            BIO_printf(bio_err, "WARNING: p value is not prime\n");
        if (i & DH_CHECK_P_NOT_SAFE_PRIME)
            BIO_printf(bio_err, "WARNING: p value is not a safe prime\n");
        if (i & DH_CHECK_Q_NOT_PRIME)
            BIO_printf(bio_err, "WARNING: q value is not a prime\n");
        if (i & DH_CHECK_INVALID_Q_VALUE)
            BIO_printf(bio_err, "WARNING: q value is invalid\n");
        if (i & DH_CHECK_INVALID_J_VALUE)
            BIO_printf(bio_err, "WARNING: j value is invalid\n");
        if (i & DH_UNABLE_TO_CHECK_GENERATOR)
            BIO_printf(bio_err,
                       "WARNING: unable to check the generator value\n");
        if (i & DH_NOT_SUITABLE_GENERATOR)
            BIO_printf(bio_err, "WARNING: the g value is not a generator\n");
        if (i == 0)
            BIO_printf(bio_err, "DH parameters appear to be ok.\n");
        if (num != 0 && i != 0) {




            BIO_printf(bio_err, "ERROR: Invalid parameters generated\n");
            goto end;
        }
    }
    if (C) {
        unsigned char *data;
        int len, bits;
        const BIGNUM *pbn, *gbn;

        len = DH_size(dh);
        bits = DH_bits(dh);
        DH_get0_pqg(dh, &pbn, ((void*)0), &gbn);
        data = app_malloc(len, "print a BN");

        BIO_printf(out, "static DH *get_dh%d(void)\n{\n", bits);
        print_bignum_var(out, pbn, "dhp", bits, data);
        print_bignum_var(out, gbn, "dhg", bits, data);
        BIO_printf(out, "    DH *dh = DH_new();\n"
                        "    BIGNUM *p, *g;\n"
                        "\n"
                        "    if (dh == NULL)\n"
                        "        return NULL;\n");
        BIO_printf(out, "    p = BN_bin2bn(dhp_%d, sizeof(dhp_%d), NULL);\n",
                   bits, bits);
        BIO_printf(out, "    g = BN_bin2bn(dhg_%d, sizeof(dhg_%d), NULL);\n",
                   bits, bits);
        BIO_printf(out, "    if (p == NULL || g == NULL\n"
                        "            || !DH_set0_pqg(dh, p, NULL, g)) {\n"
                        "        DH_free(dh);\n"
                        "        BN_free(p);\n"
                        "        BN_free(g);\n"
                        "        return NULL;\n"
                        "    }\n");
        if (DH_get_length(dh) > 0)
            BIO_printf(out,
                        "    if (!DH_set_length(dh, %ld)) {\n"
                        "        DH_free(dh);\n"
                        "        return NULL;\n"
                        "    }\n", DH_get_length(dh));
        BIO_printf(out, "    return dh;\n}\n");
        OPENSSL_free(data);
    }

    if (!noout) {
        const BIGNUM *q;
        DH_get0_pqg(dh, ((void*)0), &q, ((void*)0));
        if (outformat == FORMAT_ASN1) {
            if (q != ((void*)0))
                i = i2d_DHxparams_bio(out, dh);
            else
                i = i2d_DHparams_bio(out, dh);
        } else if (q != ((void*)0)) {
            i = PEM_write_bio_DHxparams(out, dh);
        } else {
            i = PEM_write_bio_DHparams(out, dh);
        }
        if (!i) {
            BIO_printf(bio_err, "unable to write DH parameters\n");
            ERR_print_errors(bio_err);
            goto end;
        }
    }
    ret = 0;
 end:
    BIO_free(in);
    BIO_free_all(out);
    DH_free(dh);
    release_engine(e);
    return ret;
}
