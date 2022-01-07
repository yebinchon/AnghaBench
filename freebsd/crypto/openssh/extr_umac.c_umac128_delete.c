
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umac_ctx {scalar_t__ free_ptr; } ;


 scalar_t__ ALLOC_BOUNDARY ;
 int explicit_bzero (struct umac_ctx*,scalar_t__) ;
 int free (struct umac_ctx*) ;

int umac_delete(struct umac_ctx *ctx)

{
    if (ctx) {
        if (ALLOC_BOUNDARY)
            ctx = (struct umac_ctx *)ctx->free_ptr;
        explicit_bzero(ctx, sizeof(*ctx) + ALLOC_BOUNDARY);
        free(ctx);
    }
    return (1);
}
