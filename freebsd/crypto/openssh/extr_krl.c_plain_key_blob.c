
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sshkey {int dummy; } ;


 int sshkey_drop_cert (struct sshkey*) ;
 int sshkey_free (struct sshkey*) ;
 int sshkey_from_private (struct sshkey const*,struct sshkey**) ;
 scalar_t__ sshkey_is_cert (struct sshkey*) ;
 int sshkey_to_blob (struct sshkey*,int **,size_t*) ;

__attribute__((used)) static int
plain_key_blob(const struct sshkey *key, u_char **blob, size_t *blen)
{
 struct sshkey *kcopy;
 int r;

 if ((r = sshkey_from_private(key, &kcopy)) != 0)
  return r;
 if (sshkey_is_cert(kcopy)) {
  if ((r = sshkey_drop_cert(kcopy)) != 0) {
   sshkey_free(kcopy);
   return r;
  }
 }
 r = sshkey_to_blob(kcopy, blob, blen);
 sshkey_free(kcopy);
 return r;
}
