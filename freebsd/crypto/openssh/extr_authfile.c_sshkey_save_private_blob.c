
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshbuf {int dummy; } ;


 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int SSH_ERR_SYSTEM_ERROR ;
 scalar_t__ atomicio (int ,int,int ,scalar_t__) ;
 int close (int) ;
 int errno ;
 int open (char const*,int,int) ;
 scalar_t__ sshbuf_len (struct sshbuf*) ;
 int sshbuf_mutable_ptr (struct sshbuf*) ;
 int unlink (char const*) ;
 int vwrite ;

__attribute__((used)) static int
sshkey_save_private_blob(struct sshbuf *keybuf, const char *filename)
{
 int fd, oerrno;

 if ((fd = open(filename, O_WRONLY | O_CREAT | O_TRUNC, 0600)) < 0)
  return SSH_ERR_SYSTEM_ERROR;
 if (atomicio(vwrite, fd, sshbuf_mutable_ptr(keybuf),
     sshbuf_len(keybuf)) != sshbuf_len(keybuf)) {
  oerrno = errno;
  close(fd);
  unlink(filename);
  errno = oerrno;
  return SSH_ERR_SYSTEM_ERROR;
 }
 close(fd);
 return 0;
}
