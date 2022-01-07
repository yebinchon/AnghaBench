
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int OPTION_CHOICE ;
typedef int ENGINE ;
typedef int BIO ;


 int BIO_f_base64 () ;
 scalar_t__ BIO_flush (int *) ;
 int BIO_free_all (int *) ;
 int * BIO_new (int ) ;
 int BIO_printf (int *,char*,...) ;
 int * BIO_push (int *,int *) ;
 int BIO_puts (int *,char*) ;
 int BIO_write (int *,unsigned char*,int) ;
 int ERR_print_errors (int ) ;
 int FORMAT_BASE64 ;
 int FORMAT_BINARY ;
 int FORMAT_TEXT ;
 int RAND_bytes (unsigned char*,int) ;
 int bio_err ;
 int * bio_open_default (char*,char,int) ;
 char* opt_arg () ;
 int opt_help (int ) ;
 char* opt_init (int,char**,int ) ;
 int opt_int (char*,int*) ;
 int opt_next () ;
 int opt_num_rest () ;
 int opt_rand (int) ;
 char** opt_rest () ;
 int rand_options ;
 int release_engine (int *) ;
 int * setup_engine (char*,int ) ;

int rand_main(int argc, char **argv)
{
    ENGINE *e = ((void*)0);
    BIO *out = ((void*)0);
    char *outfile = ((void*)0), *prog;
    OPTION_CHOICE o;
    int format = FORMAT_BINARY, i, num = -1, r, ret = 1;

    prog = opt_init(argc, argv, rand_options);
    while ((o = opt_next()) != 133) {
        switch (o) {
        case 133:
        case 132:
 opthelp:
            BIO_printf(bio_err, "%s: Use -help for summary.\n", prog);
            goto end;
        case 131:
            opt_help(rand_options);
            ret = 0;
            goto end;
        case 129:
            outfile = opt_arg();
            break;
        case 134:
            e = setup_engine(opt_arg(), 0);
            break;
        case 128:
            if (!opt_rand(o))
                goto end;
            break;
        case 135:
            format = FORMAT_BASE64;
            break;
        case 130:
            format = FORMAT_TEXT;
            break;
        }
    }
    argc = opt_num_rest();
    argv = opt_rest();
    if (argc == 1) {
        if (!opt_int(argv[0], &num) || num <= 0)
            goto end;
    } else if (argc > 0) {
        BIO_printf(bio_err, "Extra arguments given.\n");
        goto opthelp;
    }

    out = bio_open_default(outfile, 'w', format);
    if (out == ((void*)0))
        goto end;

    if (format == FORMAT_BASE64) {
        BIO *b64 = BIO_new(BIO_f_base64());
        if (b64 == ((void*)0))
            goto end;
        out = BIO_push(b64, out);
    }

    while (num > 0) {
        unsigned char buf[4096];
        int chunk;

        chunk = num;
        if (chunk > (int)sizeof(buf))
            chunk = sizeof(buf);
        r = RAND_bytes(buf, chunk);
        if (r <= 0)
            goto end;
        if (format != FORMAT_TEXT) {
            if (BIO_write(out, buf, chunk) != chunk)
                goto end;
        } else {
            for (i = 0; i < chunk; i++)
                if (BIO_printf(out, "%02x", buf[i]) != 2)
                    goto end;
        }
        num -= chunk;
    }
    if (format == FORMAT_TEXT)
        BIO_puts(out, "\n");
    if (BIO_flush(out) <= 0)
        goto end;

    ret = 0;

 end:
    if (ret != 0)
        ERR_print_errors(bio_err);
    release_engine(e);
    BIO_free_all(out);
    return ret;
}
