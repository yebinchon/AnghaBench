
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPTION_CHOICE ;
typedef int EVP_PKEY_CTX ;
typedef int EVP_PKEY ;
typedef int ENGINE ;
typedef int BIO ;


 int BIO_free (int *) ;
 int BIO_free_all (int *) ;
 int BIO_printf (int *,char*,...) ;
 int ERR_get_error () ;
 unsigned long ERR_peek_error () ;
 int ERR_print_errors (int *) ;
 char* ERR_reason_error_string (unsigned long) ;
 int EVP_PKEY_CTX_free (int *) ;
 int * EVP_PKEY_CTX_new (int *,int *) ;
 int EVP_PKEY_free (int *) ;
 int EVP_PKEY_param_check (int *) ;
 int EVP_PKEY_print_params (int *,int *,int ,int *) ;
 int FORMAT_PEM ;
 int * PEM_read_bio_Parameters (int *,int *) ;
 int PEM_write_bio_Parameters (int *,int *) ;
 int * bio_err ;
 int * bio_open_default (char*,char,int ) ;
 char* opt_arg () ;
 int opt_help (int ) ;
 char* opt_init (int,char**,int ) ;
 int opt_next () ;
 int opt_num_rest () ;
 int pkeyparam_options ;
 int release_engine (int *) ;
 int * setup_engine (char*,int ) ;

int pkeyparam_main(int argc, char **argv)
{
    ENGINE *e = ((void*)0);
    BIO *in = ((void*)0), *out = ((void*)0);
    EVP_PKEY *pkey = ((void*)0);
    int text = 0, noout = 0, ret = 1, check = 0;
    OPTION_CHOICE o;
    char *infile = ((void*)0), *outfile = ((void*)0), *prog;

    prog = opt_init(argc, argv, pkeyparam_options);
    while ((o = opt_next()) != 134) {
        switch (o) {
        case 134:
        case 133:
 opthelp:
            BIO_printf(bio_err, "%s: Use -help for summary.\n", prog);
            goto end;
        case 132:
            opt_help(pkeyparam_options);
            ret = 0;
            goto end;
        case 131:
            infile = opt_arg();
            break;
        case 129:
            outfile = opt_arg();
            break;
        case 135:
            e = setup_engine(opt_arg(), 0);
            break;
        case 128:
            text = 1;
            break;
        case 130:
            noout = 1;
            break;
        case 136:
            check = 1;
            break;
        }
    }
    argc = opt_num_rest();
    if (argc != 0)
        goto opthelp;

    in = bio_open_default(infile, 'r', FORMAT_PEM);
    if (in == ((void*)0))
        goto end;
    out = bio_open_default(outfile, 'w', FORMAT_PEM);
    if (out == ((void*)0))
        goto end;
    pkey = PEM_read_bio_Parameters(in, ((void*)0));
    if (pkey == ((void*)0)) {
        BIO_printf(bio_err, "Error reading parameters\n");
        ERR_print_errors(bio_err);
        goto end;
    }

    if (check) {
        int r;
        EVP_PKEY_CTX *ctx;

        ctx = EVP_PKEY_CTX_new(pkey, e);
        if (ctx == ((void*)0)) {
            ERR_print_errors(bio_err);
            goto end;
        }

        r = EVP_PKEY_param_check(ctx);

        if (r == 1) {
            BIO_printf(out, "Parameters are valid\n");
        } else {




            unsigned long err;

            BIO_printf(out, "Parameters are invalid\n");

            while ((err = ERR_peek_error()) != 0) {
                BIO_printf(out, "Detailed error: %s\n",
                           ERR_reason_error_string(err));
                ERR_get_error();
            }
        }
        EVP_PKEY_CTX_free(ctx);
    }

    if (!noout)
        PEM_write_bio_Parameters(out, pkey);

    if (text)
        EVP_PKEY_print_params(out, pkey, 0, ((void*)0));

    ret = 0;

 end:
    EVP_PKEY_free(pkey);
    release_engine(e);
    BIO_free_all(out);
    BIO_free(in);

    return ret;
}
