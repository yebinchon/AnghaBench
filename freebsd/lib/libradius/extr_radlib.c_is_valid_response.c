
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct TYPE_4__ {scalar_t__ s_addr; } ;
struct sockaddr_in {scalar_t__ sin_family; scalar_t__ sin_port; TYPE_1__ sin_addr; } ;
struct TYPE_5__ {scalar_t__ s_addr; } ;
struct TYPE_6__ {scalar_t__ sin_family; scalar_t__ sin_port; TYPE_2__ sin_addr; } ;
struct rad_server {int* secret; TYPE_3__ addr; } ;
struct rad_handle {size_t in_len; int* in; int* out; struct rad_server* servers; } ;
typedef int MD5_CTX ;
typedef int HMAC_CTX ;


 int EVP_MAX_MD_SIZE ;
 int EVP_md5 () ;
 int HMAC_CTX_free (int *) ;
 int * HMAC_CTX_new () ;
 int HMAC_CTX_reset (int *) ;
 int HMAC_Final (int *,int*,int *) ;
 int HMAC_Init_ex (int *,int*,int,int ,int *) ;
 int HMAC_Update (int *,int*,size_t) ;
 size_t LEN_AUTH ;
 int MD5Final (unsigned char*,int *) ;
 int MD5Init (int *) ;
 int MD5Update (int *,int*,int) ;
 int MD5_DIGEST_LENGTH ;
 int MSGSIZE ;
 size_t POS_ATTRS ;
 size_t POS_AUTH ;
 size_t POS_CODE ;
 size_t POS_LENGTH ;
 int RAD_ACCOUNTING_RESPONSE ;
 scalar_t__ RAD_MESSAGE_AUTHENTIC ;
 scalar_t__ memcmp (int*,unsigned char*,int) ;
 int memcpy (int*,int*,int) ;
 int memset (int*,int ,int) ;
 int strlen (int*) ;

__attribute__((used)) static int
is_valid_response(struct rad_handle *h, int srv,
    const struct sockaddr_in *from)
{
 MD5_CTX ctx;
 unsigned char md5[MD5_DIGEST_LENGTH];
 const struct rad_server *srvp;
 int len;







 srvp = &h->servers[srv];


 if (from->sin_family != srvp->addr.sin_family ||
     from->sin_addr.s_addr != srvp->addr.sin_addr.s_addr ||
     from->sin_port != srvp->addr.sin_port)
  return 0;


 if (h->in_len < POS_ATTRS)
  return 0;
 len = h->in[POS_LENGTH] << 8 | h->in[POS_LENGTH+1];
 if (len > h->in_len)
  return 0;


 MD5Init(&ctx);
 MD5Update(&ctx, &h->in[POS_CODE], POS_AUTH - POS_CODE);
 MD5Update(&ctx, &h->out[POS_AUTH], LEN_AUTH);
 MD5Update(&ctx, &h->in[POS_ATTRS], len - POS_ATTRS);
 MD5Update(&ctx, srvp->secret, strlen(srvp->secret));
 MD5Final(md5, &ctx);
 if (memcmp(&h->in[POS_AUTH], md5, sizeof md5) != 0)
  return 0;
 return 1;
}
