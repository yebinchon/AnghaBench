
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sshbuf {int dummy; } ;


 int POKE_U32 (int *,size_t) ;
 int SSHBUF_DBG (char*) ;
 int SSHBUF_SIZE_MAX ;
 int SSH_ERR_NO_BUFFER_SPACE ;
 int memcpy (int *,void const*,size_t) ;
 int sshbuf_reserve (struct sshbuf*,size_t,int **) ;

int
sshbuf_put_string(struct sshbuf *buf, const void *v, size_t len)
{
 u_char *d;
 int r;

 if (len > SSHBUF_SIZE_MAX - 4) {
  SSHBUF_DBG(("SSH_ERR_NO_BUFFER_SPACE"));
  return SSH_ERR_NO_BUFFER_SPACE;
 }
 if ((r = sshbuf_reserve(buf, len + 4, &d)) < 0)
  return r;
 POKE_U32(d, len);
 if (len != 0)
  memcpy(d + 4, v, len);
 return 0;
}
