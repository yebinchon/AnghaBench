
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EdonRState ;


 int bzero (int *,int) ;
 int kmem_free (int *,int) ;

void
abd_checksum_edonr_tmpl_free(void *ctx_template)
{
 EdonRState *ctx = ctx_template;

 bzero(ctx, sizeof (*ctx));
 kmem_free(ctx, sizeof (*ctx));
}
