
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;


 int BIO_flush (int *) ;
 int BIO_free_all (int *) ;
 int * BIO_new_file (char const*,char*) ;
 int BIO_printf (int ,char*,char const*) ;
 int BIO_puts (int *,char*) ;
 scalar_t__ BIO_tell (int *) ;
 int SSL_CTX_set_keylog_callback (int *,int ) ;
 int bio_err ;
 int * bio_keylog ;
 int keylog_callback ;

int set_keylog_file(SSL_CTX *ctx, const char *keylog_file)
{

    BIO_free_all(bio_keylog);
    bio_keylog = ((void*)0);

    if (ctx == ((void*)0) || keylog_file == ((void*)0)) {

        return 0;
    }






    bio_keylog = BIO_new_file(keylog_file, "a");
    if (bio_keylog == ((void*)0)) {
        BIO_printf(bio_err, "Error writing keylog file %s\n", keylog_file);
        return 1;
    }


    if (BIO_tell(bio_keylog) == 0) {
        BIO_puts(bio_keylog,
                 "# SSL/TLS secrets log file, generated by OpenSSL\n");
        (void)BIO_flush(bio_keylog);
    }
    SSL_CTX_set_keylog_callback(ctx, keylog_callback);
    return 0;
}
