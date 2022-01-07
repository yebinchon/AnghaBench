
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct torus_context {scalar_t__ torus; int fabric; } ;


 int free (struct torus_context*) ;
 int teardown_fabric (int *) ;
 int teardown_torus (scalar_t__) ;

__attribute__((used)) static
void torus_context_delete(void *context)
{
 struct torus_context *ctx = context;

 teardown_fabric(&ctx->fabric);
 if (ctx->torus)
  teardown_torus(ctx->torus);
 free(ctx);
}
