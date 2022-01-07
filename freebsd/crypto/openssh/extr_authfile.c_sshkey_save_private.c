
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int dummy; } ;
struct sshbuf {int dummy; } ;


 int SSH_ERR_ALLOC_FAIL ;
 int sshbuf_free (struct sshbuf*) ;
 struct sshbuf* sshbuf_new () ;
 int sshkey_private_to_fileblob (struct sshkey*,struct sshbuf*,char const*,char const*,int,char const*,int) ;
 int sshkey_save_private_blob (struct sshbuf*,char const*) ;

int
sshkey_save_private(struct sshkey *key, const char *filename,
    const char *passphrase, const char *comment,
    int force_new_format, const char *new_format_cipher, int new_format_rounds)
{
 struct sshbuf *keyblob = ((void*)0);
 int r;

 if ((keyblob = sshbuf_new()) == ((void*)0))
  return SSH_ERR_ALLOC_FAIL;
 if ((r = sshkey_private_to_fileblob(key, keyblob, passphrase, comment,
     force_new_format, new_format_cipher, new_format_rounds)) != 0)
  goto out;
 if ((r = sshkey_save_private_blob(keyblob, filename)) != 0)
  goto out;
 r = 0;
 out:
 sshbuf_free(keyblob);
 return r;
}
