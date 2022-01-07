
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SHA512_CTX ;


 int SHA512_Update (int *,void const*,size_t) ;

int SHA384_Update(SHA512_CTX *c, const void *data, size_t len)
{
    return SHA512_Update(c, data, len);
}
