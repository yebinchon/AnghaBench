
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_char ;
struct sshbuf {int dummy; } ;


 int PEEK_U32 (int const*) ;
 int SSHBUF_DBG (char*) ;
 int SSHBUF_SIZE_MAX ;
 int SSH_ERR_MESSAGE_INCOMPLETE ;
 int SSH_ERR_STRING_TOO_LARGE ;
 int sshbuf_len (struct sshbuf const*) ;
 int * sshbuf_ptr (struct sshbuf const*) ;

int
sshbuf_peek_string_direct(const struct sshbuf *buf, const u_char **valp,
    size_t *lenp)
{
 u_int32_t len;
 const u_char *p = sshbuf_ptr(buf);

 if (valp != ((void*)0))
  *valp = ((void*)0);
 if (lenp != ((void*)0))
  *lenp = 0;
 if (sshbuf_len(buf) < 4) {
  SSHBUF_DBG(("SSH_ERR_MESSAGE_INCOMPLETE"));
  return SSH_ERR_MESSAGE_INCOMPLETE;
 }
 len = PEEK_U32(p);
 if (len > SSHBUF_SIZE_MAX - 4) {
  SSHBUF_DBG(("SSH_ERR_STRING_TOO_LARGE"));
  return SSH_ERR_STRING_TOO_LARGE;
 }
 if (sshbuf_len(buf) - 4 < len) {
  SSHBUF_DBG(("SSH_ERR_MESSAGE_INCOMPLETE"));
  return SSH_ERR_MESSAGE_INCOMPLETE;
 }
 if (valp != ((void*)0))
  *valp = p + 4;
 if (lenp != ((void*)0))
  *lenp = len;
 return 0;
}
