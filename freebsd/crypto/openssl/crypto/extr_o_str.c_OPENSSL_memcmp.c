
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int OPENSSL_memcmp(const void *v1, const void *v2, size_t n)
{
    const unsigned char *c1 = v1, *c2 = v2;
    int ret = 0;

    while (n && (ret = *c1 - *c2) == 0)
        n--, c1++, c2++;

    return ret;
}
