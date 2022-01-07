
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostkeys_update_ctx {size_t nkeys; size_t nold; struct hostkeys_update_ctx* ip_str; struct hostkeys_update_ctx* host_str; struct hostkeys_update_ctx* old_keys; struct hostkeys_update_ctx* keys_seen; struct hostkeys_update_ctx* keys; } ;


 int free (struct hostkeys_update_ctx*) ;
 int sshkey_free (struct hostkeys_update_ctx) ;

__attribute__((used)) static void
hostkeys_update_ctx_free(struct hostkeys_update_ctx *ctx)
{
 size_t i;

 if (ctx == ((void*)0))
  return;
 for (i = 0; i < ctx->nkeys; i++)
  sshkey_free(ctx->keys[i]);
 free(ctx->keys);
 free(ctx->keys_seen);
 for (i = 0; i < ctx->nold; i++)
  sshkey_free(ctx->old_keys[i]);
 free(ctx->old_keys);
 free(ctx->host_str);
 free(ctx->ip_str);
 free(ctx);
}
