
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshbuf {int dummy; } ;
struct ssh_hmac_ctx {int digest; } ;


 int ssh_digest_update_buffer (int ,struct sshbuf const*) ;

int
ssh_hmac_update_buffer(struct ssh_hmac_ctx *ctx, const struct sshbuf *b)
{
 return ssh_digest_update_buffer(ctx->digest, b);
}
