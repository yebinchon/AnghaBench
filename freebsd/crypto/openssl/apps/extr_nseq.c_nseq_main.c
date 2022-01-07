
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_6__ {int * certs; } ;
typedef int OPTION_CHOICE ;
typedef TYPE_1__ NETSCAPE_CERT_SEQUENCE ;
typedef int BIO ;


 int BIO_free (int *) ;
 int BIO_free_all (int *) ;
 int BIO_printf (int ,char*,char*,...) ;
 int ERR_print_errors (int ) ;
 int FORMAT_PEM ;
 int NETSCAPE_CERT_SEQUENCE_free (TYPE_1__*) ;
 TYPE_1__* NETSCAPE_CERT_SEQUENCE_new () ;






 TYPE_1__* PEM_read_bio_NETSCAPE_CERT_SEQUENCE (int *,int *,int *,int *) ;
 int * PEM_read_bio_X509 (int *,int *,int *,int *) ;
 int PEM_write_bio_NETSCAPE_CERT_SEQUENCE (int *,TYPE_1__*) ;
 int PEM_write_bio_X509 (int *,int *) ;
 int bio_err ;
 int * bio_open_default (char*,char,int ) ;
 int dump_cert_text (int *,int *) ;
 int nseq_options ;
 char* opt_arg () ;
 int opt_help (int ) ;
 char* opt_init (int,char**,int ) ;
 int opt_next () ;
 int opt_num_rest () ;
 int * sk_X509_new_null () ;
 int sk_X509_num (int *) ;
 int sk_X509_push (int *,int *) ;
 int * sk_X509_value (int *,int) ;

int nseq_main(int argc, char **argv)
{
    BIO *in = ((void*)0), *out = ((void*)0);
    X509 *x509 = ((void*)0);
    NETSCAPE_CERT_SEQUENCE *seq = ((void*)0);
    OPTION_CHOICE o;
    int toseq = 0, ret = 1, i;
    char *infile = ((void*)0), *outfile = ((void*)0), *prog;

    prog = opt_init(argc, argv, nseq_options);
    while ((o = opt_next()) != 133) {
        switch (o) {
        case 133:
        case 132:
 opthelp:
            BIO_printf(bio_err, "%s: Use -help for summary.\n", prog);
            goto end;
        case 131:
            ret = 0;
            opt_help(nseq_options);
            goto end;
        case 128:
            toseq = 1;
            break;
        case 130:
            infile = opt_arg();
            break;
        case 129:
            outfile = opt_arg();
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

    if (toseq) {
        seq = NETSCAPE_CERT_SEQUENCE_new();
        if (seq == ((void*)0))
            goto end;
        seq->certs = sk_X509_new_null();
        if (seq->certs == ((void*)0))
            goto end;
        while ((x509 = PEM_read_bio_X509(in, ((void*)0), ((void*)0), ((void*)0))))
            sk_X509_push(seq->certs, x509);

        if (!sk_X509_num(seq->certs)) {
            BIO_printf(bio_err, "%s: Error reading certs file %s\n",
                       prog, infile);
            ERR_print_errors(bio_err);
            goto end;
        }
        PEM_write_bio_NETSCAPE_CERT_SEQUENCE(out, seq);
        ret = 0;
        goto end;
    }

    seq = PEM_read_bio_NETSCAPE_CERT_SEQUENCE(in, ((void*)0), ((void*)0), ((void*)0));
    if (seq == ((void*)0)) {
        BIO_printf(bio_err, "%s: Error reading sequence file %s\n",
                   prog, infile);
        ERR_print_errors(bio_err);
        goto end;
    }

    for (i = 0; i < sk_X509_num(seq->certs); i++) {
        x509 = sk_X509_value(seq->certs, i);
        dump_cert_text(out, x509);
        PEM_write_bio_X509(out, x509);
    }
    ret = 0;
 end:
    BIO_free(in);
    BIO_free_all(out);
    NETSCAPE_CERT_SEQUENCE_free(seq);

    return ret;
}
