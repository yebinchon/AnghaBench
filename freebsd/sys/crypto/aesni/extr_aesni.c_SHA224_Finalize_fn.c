
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SHA224_Final (void*,void*) ;

__attribute__((used)) static void
SHA224_Finalize_fn(void *digest, void *ctx)
{
 SHA224_Final(digest, ctx);
}
