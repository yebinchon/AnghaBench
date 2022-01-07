
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshbuf {int dummy; } ;
struct ssh_digest_ctx {int dummy; } ;


 int ssh_digest_update (struct ssh_digest_ctx*,int ,int ) ;
 int sshbuf_len (struct sshbuf const*) ;
 int sshbuf_ptr (struct sshbuf const*) ;

int
ssh_digest_update_buffer(struct ssh_digest_ctx *ctx, const struct sshbuf *b)
{
 return ssh_digest_update(ctx, sshbuf_ptr(b), sshbuf_len(b));
}
