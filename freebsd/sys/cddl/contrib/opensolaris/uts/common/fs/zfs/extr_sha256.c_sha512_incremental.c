
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SHA512_CTX ;


 int SHA512_256_Update (int *,void*,size_t) ;

__attribute__((used)) static int
sha512_incremental(void *buf, size_t size, void *arg)
{
 SHA512_CTX *ctx = arg;
 SHA512_256_Update(ctx, buf, size);
 return (0);
}
