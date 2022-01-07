
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPENSSL_free (char*) ;
 void* OPENSSL_memdup (char const*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int int_x509_param_set1(char **pdest, size_t *pdestlen,
                               const char *src, size_t srclen)
{
    void *tmp;
    if (src) {
        if (srclen == 0)
            srclen = strlen(src);

        tmp = OPENSSL_memdup(src, srclen);
        if (tmp == ((void*)0))
            return 0;
    } else {
        tmp = ((void*)0);
        srclen = 0;
    }
    OPENSSL_free(*pdest);
    *pdest = tmp;
    if (pdestlen != ((void*)0))
        *pdestlen = srclen;
    return 1;
}
