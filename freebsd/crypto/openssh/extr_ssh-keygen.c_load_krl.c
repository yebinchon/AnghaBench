
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshbuf {int dummy; } ;
struct ssh_krl {int dummy; } ;


 int O_RDONLY ;
 int close (int) ;
 int errno ;
 int fatal (char*,...) ;
 int open (char const*,int ) ;
 int ssh_err (int) ;
 int ssh_krl_from_blob (struct sshbuf*,struct ssh_krl**,int *,int ) ;
 int sshbuf_free (struct sshbuf*) ;
 struct sshbuf* sshbuf_new () ;
 int sshkey_load_file (int,struct sshbuf*) ;
 int strerror (int ) ;

__attribute__((used)) static void
load_krl(const char *path, struct ssh_krl **krlp)
{
 struct sshbuf *krlbuf;
 int r, fd;

 if ((krlbuf = sshbuf_new()) == ((void*)0))
  fatal("sshbuf_new failed");
 if ((fd = open(path, O_RDONLY)) == -1)
  fatal("open %s: %s", path, strerror(errno));
 if ((r = sshkey_load_file(fd, krlbuf)) != 0)
  fatal("Unable to load KRL: %s", ssh_err(r));
 close(fd);

 if ((r = ssh_krl_from_blob(krlbuf, krlp, ((void*)0), 0)) != 0 ||
     *krlp == ((void*)0))
  fatal("Invalid KRL file: %s", ssh_err(r));
 sshbuf_free(krlbuf);
}
