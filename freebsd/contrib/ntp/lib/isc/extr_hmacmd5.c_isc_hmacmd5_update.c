
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int md5ctx; } ;
typedef TYPE_1__ isc_hmacmd5_t ;


 int isc_md5_update (int *,unsigned char const*,unsigned int) ;

void
isc_hmacmd5_update(isc_hmacmd5_t *ctx, const unsigned char *buf,
     unsigned int len)
{
 isc_md5_update(&ctx->md5ctx, buf, len);
}
