
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t OPENSSL_strlcpy (char*,char const*,size_t) ;

size_t OPENSSL_strlcat(char *dst, const char *src, size_t size)
{
    size_t l = 0;
    for (; size > 0 && *dst; size--, dst++)
        l++;
    return l + OPENSSL_strlcpy(dst, src, size);
}
