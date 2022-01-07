
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zero ;
typedef int u8 ;
struct radius_msg {TYPE_1__* hdr; int buf; } ;
struct radius_hdr {int dummy; } ;
struct TYPE_2__ {int authenticator; } ;


 int MD5_MAC_LEN ;
 int md5_vector (int,int const**,size_t*,int *) ;
 scalar_t__ os_memcmp_const (int ,int *,int) ;
 int os_memset (int *,int ,int) ;
 int wpabuf_len (int ) ;

int radius_msg_verify_acct_req(struct radius_msg *msg, const u8 *secret,
          size_t secret_len)
{
 const u8 *addr[4];
 size_t len[4];
 u8 zero[MD5_MAC_LEN];
 u8 hash[MD5_MAC_LEN];

 os_memset(zero, 0, sizeof(zero));
 addr[0] = (u8 *) msg->hdr;
 len[0] = sizeof(struct radius_hdr) - MD5_MAC_LEN;
 addr[1] = zero;
 len[1] = MD5_MAC_LEN;
 addr[2] = (u8 *) (msg->hdr + 1);
 len[2] = wpabuf_len(msg->buf) - sizeof(struct radius_hdr);
 addr[3] = secret;
 len[3] = secret_len;
 md5_vector(4, addr, len, hash);
 return os_memcmp_const(msg->hdr->authenticator, hash, MD5_MAC_LEN) != 0;
}
