
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int dummy; } ;
struct sshbuf {int dummy; } ;


 int O_RDONLY ;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_KEY_BAD_PERMISSIONS ;
 int SSH_ERR_SYSTEM_ERROR ;
 int close (int) ;
 int open (char const*,int ) ;
 int sshbuf_free (struct sshbuf*) ;
 struct sshbuf* sshbuf_new () ;
 int sshkey_load_file (int,struct sshbuf*) ;
 int sshkey_parse_private_fileblob (struct sshbuf*,char const*,struct sshkey**,char**) ;
 scalar_t__ sshkey_perm_ok (int,char const*) ;
 int sshkey_set_filename (struct sshkey*,char const*) ;

int
sshkey_load_private(const char *filename, const char *passphrase,
    struct sshkey **keyp, char **commentp)
{
 struct sshbuf *buffer = ((void*)0);
 int r, fd;

 if (keyp != ((void*)0))
  *keyp = ((void*)0);
 if (commentp != ((void*)0))
  *commentp = ((void*)0);

 if ((fd = open(filename, O_RDONLY)) < 0)
  return SSH_ERR_SYSTEM_ERROR;
 if (sshkey_perm_ok(fd, filename) != 0) {
  r = SSH_ERR_KEY_BAD_PERMISSIONS;
  goto out;
 }

 if ((buffer = sshbuf_new()) == ((void*)0)) {
  r = SSH_ERR_ALLOC_FAIL;
  goto out;
 }
 if ((r = sshkey_load_file(fd, buffer)) != 0 ||
     (r = sshkey_parse_private_fileblob(buffer, passphrase, keyp,
     commentp)) != 0)
  goto out;
 if (keyp && *keyp &&
     (r = sshkey_set_filename(*keyp, filename)) != 0)
  goto out;
 r = 0;
 out:
 close(fd);
 sshbuf_free(buffer);
 return r;
}
