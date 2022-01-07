
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SHA256_CTX ;


 int SHA256_Update (int *,void const*,size_t) ;

int SHA224_Update(SHA256_CTX *c, const void *data, size_t len)
{
    return SHA256_Update(c, data, len);
}
