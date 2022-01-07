
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sshbuf {int dummy; } ;


 int SIZE_MAX ;
 int b64_ntop (int const*,size_t,char*,size_t) ;
 int explicit_bzero (char*,size_t) ;
 int free (char*) ;
 char* malloc (size_t) ;
 size_t sshbuf_len (struct sshbuf*) ;
 int * sshbuf_ptr (struct sshbuf*) ;
 char* strdup (char*) ;

char *
sshbuf_dtob64(struct sshbuf *buf)
{
 size_t len = sshbuf_len(buf), plen;
 const u_char *p = sshbuf_ptr(buf);
 char *ret;
 int r;

 if (len == 0)
  return strdup("");
 plen = ((len + 2) / 3) * 4 + 1;
 if (SIZE_MAX / 2 <= len || (ret = malloc(plen)) == ((void*)0))
  return ((void*)0);
 if ((r = b64_ntop(p, len, ret, plen)) == -1) {
  explicit_bzero(ret, plen);
  free(ret);
  return ((void*)0);
 }
 return ret;
}
