
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zio_cksum_t ;
struct TYPE_3__ {int zcs_bytes; } ;
typedef TYPE_1__ zio_cksum_salt_t ;
typedef void Skein_512_Ctxt_t ;


 int Skein_512_InitExt (void*,int,int ,int ,int) ;
 int bzero (void*,int) ;
 void* malloc (int) ;

__attribute__((used)) static void *
zio_checksum_skein_tmpl_init(const zio_cksum_salt_t *salt)
{
 Skein_512_Ctxt_t *ctx;

 ctx = malloc(sizeof (*ctx));
 bzero(ctx, sizeof (*ctx));
 (void) Skein_512_InitExt(ctx, sizeof (zio_cksum_t) * 8, 0,
     salt->zcs_bytes, sizeof (salt->zcs_bytes));
 return (ctx);
}
