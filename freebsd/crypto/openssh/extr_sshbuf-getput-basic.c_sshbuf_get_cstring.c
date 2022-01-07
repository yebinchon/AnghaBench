
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sshbuf {int dummy; } ;


 int SSHBUF_DBG (char*) ;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INVALID_FORMAT ;
 char* malloc (size_t) ;
 int * memchr (int const*,char,size_t) ;
 int memcpy (char*,int const*,size_t) ;
 int sshbuf_peek_string_direct (struct sshbuf*,int const**,size_t*) ;
 int sshbuf_skip_string (struct sshbuf*) ;

int
sshbuf_get_cstring(struct sshbuf *buf, char **valp, size_t *lenp)
{
 size_t len;
 const u_char *p, *z;
 int r;

 if (valp != ((void*)0))
  *valp = ((void*)0);
 if (lenp != ((void*)0))
  *lenp = 0;
 if ((r = sshbuf_peek_string_direct(buf, &p, &len)) != 0)
  return r;

 if (len > 0 &&
     (z = memchr(p , '\0', len)) != ((void*)0) && z < p + len - 1) {
  SSHBUF_DBG(("SSH_ERR_INVALID_FORMAT"));
  return SSH_ERR_INVALID_FORMAT;
 }
 if ((r = sshbuf_skip_string(buf)) != 0)
  return -1;
 if (valp != ((void*)0)) {
  if ((*valp = malloc(len + 1)) == ((void*)0)) {
   SSHBUF_DBG(("SSH_ERR_ALLOC_FAIL"));
   return SSH_ERR_ALLOC_FAIL;
  }
  if (len != 0)
   memcpy(*valp, p, len);
  (*valp)[len] = '\0';
 }
 if (lenp != ((void*)0))
  *lenp = (size_t)len;
 return 0;
}
