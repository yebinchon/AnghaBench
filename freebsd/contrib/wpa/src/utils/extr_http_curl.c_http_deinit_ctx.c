
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct http_ctx {struct http_ctx* svc_client_key; struct http_ctx* svc_client_cert; int svc_password; int svc_username; struct http_ctx* svc_ca_fname; struct http_ctx* svc_address; struct http_ctx* curl_buf; } ;


 int clear_curl (struct http_ctx*) ;
 int curl_global_cleanup () ;
 int os_free (struct http_ctx*) ;
 int str_clear_free (int ) ;

void http_deinit_ctx(struct http_ctx *ctx)
{
 clear_curl(ctx);
 os_free(ctx->curl_buf);
 curl_global_cleanup();

 os_free(ctx->svc_address);
 os_free(ctx->svc_ca_fname);
 str_clear_free(ctx->svc_username);
 str_clear_free(ctx->svc_password);
 os_free(ctx->svc_client_cert);
 os_free(ctx->svc_client_key);

 os_free(ctx);
}
