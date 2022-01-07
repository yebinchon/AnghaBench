
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int dummy; } ;
struct sshbuf {int dummy; } ;


 int SSH_ERR_ALLOC_FAIL ;
 int sshbuf_free (struct sshbuf*) ;
 struct sshbuf* sshbuf_new () ;
 int sshkey_load_file (int,struct sshbuf*) ;
 int sshkey_parse_private_fileblob_type (struct sshbuf*,int,char const*,struct sshkey**,char**) ;

int
sshkey_load_private_type_fd(int fd, int type, const char *passphrase,
    struct sshkey **keyp, char **commentp)
{
 struct sshbuf *buffer = ((void*)0);
 int r;

 if (keyp != ((void*)0))
  *keyp = ((void*)0);
 if ((buffer = sshbuf_new()) == ((void*)0)) {
  r = SSH_ERR_ALLOC_FAIL;
  goto out;
 }
 if ((r = sshkey_load_file(fd, buffer)) != 0 ||
     (r = sshkey_parse_private_fileblob_type(buffer, type,
     passphrase, keyp, commentp)) != 0)
  goto out;


 r = 0;
 out:
 sshbuf_free(buffer);
 return r;
}
