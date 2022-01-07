
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIO_printf (int ,char*) ;
 scalar_t__ OPENSSL_hexchar2int (unsigned char) ;
 int bio_err ;
 int isxdigit (unsigned char) ;
 int memset (unsigned char*,int ,int) ;
 int strlen (char const*) ;

__attribute__((used)) static int set_hex(const char *in, unsigned char *out, int size)
{
    int i, n;
    unsigned char j;

    i = size * 2;
    n = strlen(in);
    if (n > i) {
        BIO_printf(bio_err, "hex string is too long, ignoring excess\n");
        n = i;
    } else if (n < i) {
        BIO_printf(bio_err, "hex string is too short, padding with zero bytes to length\n");
    }

    memset(out, 0, size);
    for (i = 0; i < n; i++) {
        j = (unsigned char)*in++;
        if (!isxdigit(j)) {
            BIO_printf(bio_err, "non-hex digit\n");
            return 0;
        }
        j = (unsigned char)OPENSSL_hexchar2int(j);
        if (i & 1)
            out[i / 2] |= j;
        else
            out[i / 2] = (j << 4);
    }
    return 1;
}
