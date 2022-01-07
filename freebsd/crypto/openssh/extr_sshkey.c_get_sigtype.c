
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sshbuf {int dummy; } ;


 int SSH_ERR_ALLOC_FAIL ;
 int free (char*) ;
 int sshbuf_free (struct sshbuf*) ;
 struct sshbuf* sshbuf_from (int const*,size_t) ;
 int sshbuf_get_cstring (struct sshbuf*,char**,int *) ;

__attribute__((used)) static int
get_sigtype(const u_char *sig, size_t siglen, char **sigtypep)
{
 int r;
 struct sshbuf *b = ((void*)0);
 char *sigtype = ((void*)0);

 if (sigtypep != ((void*)0))
  *sigtypep = ((void*)0);
 if ((b = sshbuf_from(sig, siglen)) == ((void*)0))
  return SSH_ERR_ALLOC_FAIL;
 if ((r = sshbuf_get_cstring(b, &sigtype, ((void*)0))) != 0)
  goto out;

 if (sigtypep != ((void*)0)) {
  *sigtypep = sigtype;
  sigtype = ((void*)0);
 }
 r = 0;
 out:
 free(sigtype);
 sshbuf_free(b);
 return r;
}
