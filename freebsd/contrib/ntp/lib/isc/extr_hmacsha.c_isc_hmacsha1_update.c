
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sha1ctx; } ;
typedef TYPE_1__ isc_hmacsha1_t ;


 int isc_sha1_update (int *,unsigned char const*,unsigned int) ;

void
isc_hmacsha1_update(isc_hmacsha1_t *ctx, const unsigned char *buf,
     unsigned int len)
{
 isc_sha1_update(&ctx->sha1ctx, buf, len);
}
