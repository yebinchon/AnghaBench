
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sha1_result (void*,void*) ;

__attribute__((used)) static void
SHA1_Finalize_fn(void *digest, void *ctx)
{
 sha1_result(ctx, digest);
}
