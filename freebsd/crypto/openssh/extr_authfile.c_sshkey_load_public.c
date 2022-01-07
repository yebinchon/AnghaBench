
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int dummy; } ;


 int KEY_UNSPEC ;
 int SSH_ERR_ALLOC_FAIL ;
 int asprintf (char**,char*,char const*) ;
 int free (char*) ;
 int sshkey_free (struct sshkey*) ;
 struct sshkey* sshkey_new (int ) ;
 int sshkey_try_load_public (struct sshkey*,char const*,char**) ;

int
sshkey_load_public(const char *filename, struct sshkey **keyp, char **commentp)
{
 struct sshkey *pub = ((void*)0);
 char *file = ((void*)0);
 int r;

 if (keyp != ((void*)0))
  *keyp = ((void*)0);
 if (commentp != ((void*)0))
  *commentp = ((void*)0);

 if ((pub = sshkey_new(KEY_UNSPEC)) == ((void*)0))
  return SSH_ERR_ALLOC_FAIL;
 if ((r = sshkey_try_load_public(pub, filename, commentp)) == 0) {
  if (keyp != ((void*)0)) {
   *keyp = pub;
   pub = ((void*)0);
  }
  r = 0;
  goto out;
 }
 sshkey_free(pub);


 if (asprintf(&file, "%s.pub", filename) == -1)
  return SSH_ERR_ALLOC_FAIL;
 if ((pub = sshkey_new(KEY_UNSPEC)) == ((void*)0)) {
  r = SSH_ERR_ALLOC_FAIL;
  goto out;
 }
 if ((r = sshkey_try_load_public(pub, file, commentp)) == 0) {
  if (keyp != ((void*)0)) {
   *keyp = pub;
   pub = ((void*)0);
  }
  r = 0;
 }
 out:
 free(file);
 sshkey_free(pub);
 return r;
}
