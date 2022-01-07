
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int hexbuf ;
struct TYPE_5__ {int vtable; } ;
typedef TYPE_1__ br_hash_compat_context ;
struct TYPE_6__ {int (* out ) (int *,unsigned char*) ;} ;
typedef TYPE_2__ br_hash_class ;


 int VE_FINGERPRINT_OK ;
 int VE_FINGERPRINT_WRONG ;
 int br_sha512_SIZE ;
 char* hexdigest (char*,int,unsigned char*,size_t) ;
 int strncmp (char*,char const*,int) ;
 int stub1 (int *,unsigned char*) ;
 int ve_error_set (char*,char const*,int,char*,int,char const*) ;
 int ve_pcr_update (unsigned char*,size_t) ;

int
ve_check_hash(br_hash_compat_context *ctx, const br_hash_class *md,
    const char *path, const char *want, size_t hlen)
{
 char hexbuf[br_sha512_SIZE * 2 + 2];
 unsigned char hbuf[br_sha512_SIZE];
 char *hex;
 int rc;
 int n;

 md->out(&ctx->vtable, hbuf);



 hex = hexdigest(hexbuf, sizeof(hexbuf), hbuf, hlen);
 if (!hex)
  return (VE_FINGERPRINT_WRONG);
 n = 2*hlen;
 if ((rc = strncmp(hex, want, n))) {
  ve_error_set("%s: %.*s != %.*s", path, n, hex, n, want);
  rc = VE_FINGERPRINT_WRONG;
 }
 return (rc ? rc : VE_FINGERPRINT_OK);
}
