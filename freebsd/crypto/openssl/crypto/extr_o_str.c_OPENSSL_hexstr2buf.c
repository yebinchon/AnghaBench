
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRYPTO_F_OPENSSL_HEXSTR2BUF ;
 int CRYPTO_R_ILLEGAL_HEX_DIGIT ;
 int CRYPTO_R_ODD_NUMBER_OF_DIGITS ;
 int CRYPTOerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (unsigned char*) ;
 int OPENSSL_hexchar2int (unsigned char) ;
 unsigned char* OPENSSL_malloc (size_t) ;
 size_t strlen (char const*) ;

unsigned char *OPENSSL_hexstr2buf(const char *str, long *len)
{
    unsigned char *hexbuf, *q;
    unsigned char ch, cl;
    int chi, cli;
    const unsigned char *p;
    size_t s;

    s = strlen(str);
    if ((hexbuf = OPENSSL_malloc(s >> 1)) == ((void*)0)) {
        CRYPTOerr(CRYPTO_F_OPENSSL_HEXSTR2BUF, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }
    for (p = (const unsigned char *)str, q = hexbuf; *p; ) {
        ch = *p++;
        if (ch == ':')
            continue;
        cl = *p++;
        if (!cl) {
            CRYPTOerr(CRYPTO_F_OPENSSL_HEXSTR2BUF,
                      CRYPTO_R_ODD_NUMBER_OF_DIGITS);
            OPENSSL_free(hexbuf);
            return ((void*)0);
        }
        cli = OPENSSL_hexchar2int(cl);
        chi = OPENSSL_hexchar2int(ch);
        if (cli < 0 || chi < 0) {
            OPENSSL_free(hexbuf);
            CRYPTOerr(CRYPTO_F_OPENSSL_HEXSTR2BUF, CRYPTO_R_ILLEGAL_HEX_DIGIT);
            return ((void*)0);
        }
        *q++ = (unsigned char)((chi << 4) | cli);
    }

    if (len)
        *len = q - hexbuf;
    return hexbuf;
}
