
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;
struct sshbuf {int dummy; } ;


 int POKE_U32 (scalar_t__*,size_t) ;
 int SSHBUF_DBG (char*) ;
 int SSHBUF_SIZE_MAX ;
 int SSH_ERR_NO_BUFFER_SPACE ;
 int memcpy (scalar_t__*,scalar_t__ const*,size_t) ;
 int sshbuf_reserve (struct sshbuf*,size_t,scalar_t__**) ;

int
sshbuf_put_bignum2_bytes(struct sshbuf *buf, const void *v, size_t len)
{
 u_char *d;
 const u_char *s = (const u_char *)v;
 int r, prepend;

 if (len > SSHBUF_SIZE_MAX - 5) {
  SSHBUF_DBG(("SSH_ERR_NO_BUFFER_SPACE"));
  return SSH_ERR_NO_BUFFER_SPACE;
 }

 for (; len > 0 && *s == 0; len--, s++)
  ;




 prepend = len > 0 && (s[0] & 0x80) != 0;
 if ((r = sshbuf_reserve(buf, len + 4 + prepend, &d)) < 0)
  return r;
 POKE_U32(d, len + prepend);
 if (prepend)
  d[4] = 0;
 if (len != 0)
  memcpy(d + 4 + prepend, s, len);
 return 0;
}
