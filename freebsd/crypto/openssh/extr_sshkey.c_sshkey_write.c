
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int dummy; } ;
struct sshbuf {int dummy; } ;
typedef int FILE ;


 int EPIPE ;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INTERNAL_ERROR ;
 int SSH_ERR_SYSTEM_ERROR ;
 int errno ;
 scalar_t__ feof (int *) ;
 int fwrite (int ,int ,int,int *) ;
 int sshbuf_free (struct sshbuf*) ;
 int sshbuf_len (struct sshbuf*) ;
 struct sshbuf* sshbuf_new () ;
 int sshbuf_ptr (struct sshbuf*) ;
 int sshkey_format_text (struct sshkey const*,struct sshbuf*) ;

int
sshkey_write(const struct sshkey *key, FILE *f)
{
 struct sshbuf *b = ((void*)0);
 int r = SSH_ERR_INTERNAL_ERROR;

 if ((b = sshbuf_new()) == ((void*)0))
  return SSH_ERR_ALLOC_FAIL;
 if ((r = sshkey_format_text(key, b)) != 0)
  goto out;
 if (fwrite(sshbuf_ptr(b), sshbuf_len(b), 1, f) != 1) {
  if (feof(f))
   errno = EPIPE;
  r = SSH_ERR_SYSTEM_ERROR;
  goto out;
 }

 r = 0;
 out:
 sshbuf_free(b);
 return r;
}
