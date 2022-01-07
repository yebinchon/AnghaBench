
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int dummy; } ;
struct sshbuf {int dummy; } ;


 int KEY_UNSPEC ;
 int sshkey_parse_private_fileblob_type (struct sshbuf*,int ,char const*,struct sshkey**,char**) ;

int
sshkey_parse_private_fileblob(struct sshbuf *buffer, const char *passphrase,
    struct sshkey **keyp, char **commentp)
{
 if (keyp != ((void*)0))
  *keyp = ((void*)0);
 if (commentp != ((void*)0))
  *commentp = ((void*)0);

 return sshkey_parse_private_fileblob_type(buffer, KEY_UNSPEC,
     passphrase, keyp, commentp);
}
