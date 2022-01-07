
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct radius_msg {TYPE_1__* hdr; } ;
struct TYPE_2__ {int * authenticator; } ;


 int md5_vector (int,int const**,size_t*,int *) ;
 int os_memcpy (int *,int const*,size_t) ;
 int os_memset (int *,int ,size_t) ;

int radius_user_password_hide(struct radius_msg *msg,
         const u8 *data, size_t data_len,
         const u8 *secret, size_t secret_len,
         u8 *buf, size_t buf_len)
{
 size_t padlen, i, pos;
 const u8 *addr[2];
 size_t len[2];
 u8 hash[16];

 if (data_len + 16 > buf_len)
  return -1;

 os_memcpy(buf, data, data_len);

 padlen = data_len % 16;
 if (padlen && data_len < buf_len) {
  padlen = 16 - padlen;
  os_memset(buf + data_len, 0, padlen);
  buf_len = data_len + padlen;
 } else {
  buf_len = data_len;
 }

 addr[0] = secret;
 len[0] = secret_len;
 addr[1] = msg->hdr->authenticator;
 len[1] = 16;
 md5_vector(2, addr, len, hash);

 for (i = 0; i < 16; i++)
  buf[i] ^= hash[i];
 pos = 16;

 while (pos < buf_len) {
  addr[0] = secret;
  len[0] = secret_len;
  addr[1] = &buf[pos - 16];
  len[1] = 16;
  md5_vector(2, addr, len, hash);

  for (i = 0; i < 16; i++)
   buf[pos + i] ^= hash[i];

  pos += 16;
 }

 return buf_len;
}
