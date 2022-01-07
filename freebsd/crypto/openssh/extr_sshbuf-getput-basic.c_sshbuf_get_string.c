
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_char ;
struct sshbuf {int dummy; } ;


 int SSHBUF_DBG (char*) ;
 int SSH_ERR_ALLOC_FAIL ;
 char* malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 int sshbuf_get_string_direct (struct sshbuf*,char const**,size_t*) ;

int
sshbuf_get_string(struct sshbuf *buf, u_char **valp, size_t *lenp)
{
 const u_char *val;
 size_t len;
 int r;

 if (valp != ((void*)0))
  *valp = ((void*)0);
 if (lenp != ((void*)0))
  *lenp = 0;
 if ((r = sshbuf_get_string_direct(buf, &val, &len)) < 0)
  return r;
 if (valp != ((void*)0)) {
  if ((*valp = malloc(len + 1)) == ((void*)0)) {
   SSHBUF_DBG(("SSH_ERR_ALLOC_FAIL"));
   return SSH_ERR_ALLOC_FAIL;
  }
  if (len != 0)
   memcpy(*valp, val, len);
  (*valp)[len] = '\0';
 }
 if (lenp != ((void*)0))
  *lenp = len;
 return 0;
}
