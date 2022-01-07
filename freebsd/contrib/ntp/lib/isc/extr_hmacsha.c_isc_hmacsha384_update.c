
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sha384ctx; } ;
typedef TYPE_1__ isc_hmacsha384_t ;


 int isc_sha384_update (int *,unsigned char const*,unsigned int) ;

void
isc_hmacsha384_update(isc_hmacsha384_t *ctx, const unsigned char *buf,
     unsigned int len)
{
 isc_sha384_update(&ctx->sha384ctx, buf, len);
}
