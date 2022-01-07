
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct umac_ctx {int hash; int pdf; struct umac_ctx* free_ptr; } ;
typedef int ptrdiff_t ;
typedef int prf_key ;
typedef int aes_int_key ;


 int ALLOC_BOUNDARY ;
 int aes_key_setup (int const*,int ) ;
 int explicit_bzero (int ,int) ;
 int pdf_init (int *,int ) ;
 int uhash_init (int *,int ) ;
 struct umac_ctx* xcalloc (int,int) ;

struct umac_ctx *umac_new(const u_char key[])



{
    struct umac_ctx *ctx, *octx;
    size_t bytes_to_add;
    aes_int_key prf_key;

    octx = ctx = xcalloc(1, sizeof(*ctx) + ALLOC_BOUNDARY);
    if (ctx) {
        if (ALLOC_BOUNDARY) {
            bytes_to_add = ALLOC_BOUNDARY -
                              ((ptrdiff_t)ctx & (ALLOC_BOUNDARY - 1));
            ctx = (struct umac_ctx *)((u_char *)ctx + bytes_to_add);
        }
        ctx->free_ptr = octx;
        aes_key_setup(key, prf_key);
        pdf_init(&ctx->pdf, prf_key);
        uhash_init(&ctx->hash, prf_key);
        explicit_bzero(prf_key, sizeof(prf_key));
    }

    return (ctx);
}
