
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int dummy; } ;
struct sshbuf {int dummy; } ;
typedef enum sshkey_serialize_rep { ____Placeholder_sshkey_serialize_rep } sshkey_serialize_rep ;


 int SSH_ERR_ALLOC_FAIL ;
 int sshbuf_free (struct sshbuf*) ;
 struct sshbuf* sshbuf_new () ;
 int sshbuf_put_stringb (struct sshbuf*,struct sshbuf*) ;
 int to_blob_buf (struct sshkey const*,struct sshbuf*,int ,int) ;

int
sshkey_puts_opts(const struct sshkey *key, struct sshbuf *b,
    enum sshkey_serialize_rep opts)
{
 struct sshbuf *tmp;
 int r;

 if ((tmp = sshbuf_new()) == ((void*)0))
  return SSH_ERR_ALLOC_FAIL;
 r = to_blob_buf(key, tmp, 0, opts);
 if (r == 0)
  r = sshbuf_put_stringb(b, tmp);
 sshbuf_free(tmp);
 return r;
}
