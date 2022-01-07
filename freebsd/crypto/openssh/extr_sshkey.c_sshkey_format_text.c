
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int dummy; } ;
struct sshbuf {int dummy; } ;


 int SSH_ERR_INTERNAL_ERROR ;
 int free (char*) ;
 int sshbuf_putf (struct sshbuf*,char*,int ,char*) ;
 int sshkey_ssh_name (struct sshkey const*) ;
 int sshkey_to_base64 (struct sshkey const*,char**) ;

int
sshkey_format_text(const struct sshkey *key, struct sshbuf *b)
{
 int r = SSH_ERR_INTERNAL_ERROR;
 char *uu = ((void*)0);

 if ((r = sshkey_to_base64(key, &uu)) != 0)
  goto out;
 if ((r = sshbuf_putf(b, "%s %s",
     sshkey_ssh_name(key), uu)) != 0)
  goto out;
 r = 0;
 out:
 free(uu);
 return r;
}
