
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int dummy; } ;
struct sshbuf {int dummy; } ;
 int SSH_ERR_INTERNAL_ERROR ;
 int SSH_ERR_INVALID_FORMAT ;
 int SSH_ERR_KEY_TYPE_UNKNOWN ;
 int SSH_ERR_KEY_WRONG_PASSPHRASE ;
 int sshkey_parse_private2 (struct sshbuf*,int,char const*,struct sshkey**,char**) ;
 int sshkey_parse_private_pem_fileblob (struct sshbuf*,int,char const*,struct sshkey**) ;

int
sshkey_parse_private_fileblob_type(struct sshbuf *blob, int type,
    const char *passphrase, struct sshkey **keyp, char **commentp)
{
 int r = SSH_ERR_INTERNAL_ERROR;

 if (keyp != ((void*)0))
  *keyp = ((void*)0);
 if (commentp != ((void*)0))
  *commentp = ((void*)0);

 switch (type) {







 case 131:



  return sshkey_parse_private2(blob, type, passphrase,
      keyp, commentp);
 case 129:
  r = sshkey_parse_private2(blob, type, passphrase, keyp,
      commentp);

  if (r == 0 || r == SSH_ERR_KEY_WRONG_PASSPHRASE)
   return r;




  return SSH_ERR_INVALID_FORMAT;

 default:
  return SSH_ERR_KEY_TYPE_UNKNOWN;
 }
}
