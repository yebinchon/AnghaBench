
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_SESSION ;
typedef int BIO ;


 int BIO_free (int *) ;
 int BIO_printf (int ,char*) ;
 int ERR_print_errors (int ) ;
 int FORMAT_ASN1 ;
 int * PEM_read_bio_SSL_SESSION (int *,int *,int *,int *) ;
 int bio_err ;
 int * bio_open_default (char*,char,int) ;
 int * d2i_SSL_SESSION_bio (int *,int *) ;

__attribute__((used)) static SSL_SESSION *load_sess_id(char *infile, int format)
{
    SSL_SESSION *x = ((void*)0);
    BIO *in = ((void*)0);

    in = bio_open_default(infile, 'r', format);
    if (in == ((void*)0))
        goto end;
    if (format == FORMAT_ASN1)
        x = d2i_SSL_SESSION_bio(in, ((void*)0));
    else
        x = PEM_read_bio_SSL_SESSION(in, ((void*)0), ((void*)0), ((void*)0));
    if (x == ((void*)0)) {
        BIO_printf(bio_err, "unable to load SSL_SESSION\n");
        ERR_print_errors(bio_err);
        goto end;
    }

 end:
    BIO_free(in);
    return x;
}
