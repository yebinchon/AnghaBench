
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CIPHER ;
typedef int SSL ;


 int BIO_printf (int ,char*,unsigned char const) ;
 int BIO_puts (int ,char*) ;
 int OPENSSL_assert (int) ;
 int * SSL_CIPHER_find (int *,unsigned char const*) ;
 char* SSL_CIPHER_get_name (int const*) ;
 size_t SSL_get0_raw_cipherlist (int *,unsigned char const**) ;
 int SSL_is_server (int *) ;
 int bio_err ;
 scalar_t__ memcmp (unsigned char const*,unsigned char const*,size_t) ;

__attribute__((used)) static void print_raw_cipherlist(SSL *s)
{
    const unsigned char *rlist;
    static const unsigned char scsv_id[] = { 0, 0xFF };
    size_t i, rlistlen, num;
    if (!SSL_is_server(s))
        return;
    num = SSL_get0_raw_cipherlist(s, ((void*)0));
    OPENSSL_assert(num == 2);
    rlistlen = SSL_get0_raw_cipherlist(s, &rlist);
    BIO_puts(bio_err, "Client cipher list: ");
    for (i = 0; i < rlistlen; i += num, rlist += num) {
        const SSL_CIPHER *c = SSL_CIPHER_find(s, rlist);
        if (i)
            BIO_puts(bio_err, ":");
        if (c != ((void*)0)) {
            BIO_puts(bio_err, SSL_CIPHER_get_name(c));
        } else if (memcmp(rlist, scsv_id, num) == 0) {
            BIO_puts(bio_err, "SCSV");
        } else {
            size_t j;
            BIO_puts(bio_err, "0x");
            for (j = 0; j < num; j++)
                BIO_printf(bio_err, "%02X", rlist[j]);
        }
    }
    BIO_puts(bio_err, "\n");
}
