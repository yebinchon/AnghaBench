
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SHA256_CTX ;


 int SHA256_Update (int *,void*,size_t) ;

__attribute__((used)) static int
sha256_incremental(void *buf, size_t size, void *arg)
{
 SHA256_CTX *ctx = arg;
 SHA256_Update(ctx, buf, size);
 return (0);
}
