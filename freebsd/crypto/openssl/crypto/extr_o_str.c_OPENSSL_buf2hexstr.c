
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRYPTO_F_OPENSSL_BUF2HEXSTR ;
 int CRYPTOerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 char* OPENSSL_malloc (long) ;
 char* OPENSSL_zalloc (int) ;
 int ebcdic2ascii (char*,char*,int) ;

char *OPENSSL_buf2hexstr(const unsigned char *buffer, long len)
{
    static const char hexdig[] = "0123456789ABCDEF";
    char *tmp, *q;
    const unsigned char *p;
    int i;

    if (len == 0)
    {
        return OPENSSL_zalloc(1);
    }

    if ((tmp = OPENSSL_malloc(len * 3)) == ((void*)0)) {
        CRYPTOerr(CRYPTO_F_OPENSSL_BUF2HEXSTR, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }
    q = tmp;
    for (i = 0, p = buffer; i < len; i++, p++) {
        *q++ = hexdig[(*p >> 4) & 0xf];
        *q++ = hexdig[*p & 0xf];
        *q++ = ':';
    }
    q[-1] = 0;




    return tmp;
}
