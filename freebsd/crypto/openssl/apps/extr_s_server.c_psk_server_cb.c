
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int BIO_flush (int ) ;
 int BIO_printf (int ,char*,...) ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_hexstr2buf (int ,long*) ;
 int bio_err ;
 int bio_s_out ;
 int memcpy (unsigned char*,unsigned char*,long) ;
 int psk_identity ;
 int psk_key ;
 scalar_t__ s_debug ;
 scalar_t__ strcmp (char const*,int ) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static unsigned int psk_server_cb(SSL *ssl, const char *identity,
                                  unsigned char *psk,
                                  unsigned int max_psk_len)
{
    long key_len = 0;
    unsigned char *key;

    if (s_debug)
        BIO_printf(bio_s_out, "psk_server_cb\n");
    if (identity == ((void*)0)) {
        BIO_printf(bio_err, "Error: client did not send PSK identity\n");
        goto out_err;
    }
    if (s_debug)
        BIO_printf(bio_s_out, "identity_len=%d identity=%s\n",
                   (int)strlen(identity), identity);


    if (strcmp(identity, psk_identity) != 0) {
        BIO_printf(bio_s_out, "PSK warning: client identity not what we expected"
                   " (got '%s' expected '%s')\n", identity, psk_identity);
    } else {
      if (s_debug)
        BIO_printf(bio_s_out, "PSK client identity found\n");
    }


    key = OPENSSL_hexstr2buf(psk_key, &key_len);
    if (key == ((void*)0)) {
        BIO_printf(bio_err, "Could not convert PSK key '%s' to buffer\n",
                   psk_key);
        return 0;
    }
    if (key_len > (int)max_psk_len) {
        BIO_printf(bio_err,
                   "psk buffer of callback is too small (%d) for key (%ld)\n",
                   max_psk_len, key_len);
        OPENSSL_free(key);
        return 0;
    }

    memcpy(psk, key, key_len);
    OPENSSL_free(key);

    if (s_debug)
        BIO_printf(bio_s_out, "fetched PSK len=%ld\n", key_len);
    return key_len;
 out_err:
    if (s_debug)
        BIO_printf(bio_err, "Error in PSK server callback\n");
    (void)BIO_flush(bio_err);
    (void)BIO_flush(bio_s_out);
    return 0;
}
