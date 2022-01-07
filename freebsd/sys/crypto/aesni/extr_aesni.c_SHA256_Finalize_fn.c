
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SHA256_Final (void*,void*) ;

__attribute__((used)) static void
SHA256_Finalize_fn(void *digest, void *ctx)
{
 SHA256_Final(digest, ctx);
}
