
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Skein_512_Ctxt_t ;


 int bzero (int *,int) ;
 int free (int *) ;

__attribute__((used)) static void
zio_checksum_skein_tmpl_free(void *ctx_template)
{
 Skein_512_Ctxt_t *ctx = ctx_template;

 bzero(ctx, sizeof (*ctx));
 free(ctx);
}
