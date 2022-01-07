
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sshbuf {int dummy; } ;


 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INVALID_FORMAT ;
 int b64_pton (char const*,int *,size_t) ;
 int explicit_bzero (int *,size_t) ;
 int free (int *) ;
 int * malloc (size_t) ;
 int sshbuf_put (struct sshbuf*,int *,int) ;
 size_t strlen (char const*) ;

int
sshbuf_b64tod(struct sshbuf *buf, const char *b64)
{
 size_t plen = strlen(b64);
 int nlen, r;
 u_char *p;

 if (plen == 0)
  return 0;
 if ((p = malloc(plen)) == ((void*)0))
  return SSH_ERR_ALLOC_FAIL;
 if ((nlen = b64_pton(b64, p, plen)) < 0) {
  explicit_bzero(p, plen);
  free(p);
  return SSH_ERR_INVALID_FORMAT;
 }
 if ((r = sshbuf_put(buf, p, nlen)) < 0) {
  explicit_bzero(p, plen);
  free(p);
  return r;
 }
 explicit_bzero(p, plen);
 free(p);
 return 0;
}
