
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sha1_init (void*) ;

__attribute__((used)) static void
SHA1_Init_fn(void *ctx)
{
 sha1_init(ctx);
}
