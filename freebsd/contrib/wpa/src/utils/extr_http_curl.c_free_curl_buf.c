
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct http_ctx {scalar_t__ curl_buf_len; int * curl_buf; } ;


 int os_free (int *) ;

__attribute__((used)) static void free_curl_buf(struct http_ctx *ctx)
{
 os_free(ctx->curl_buf);
 ctx->curl_buf = ((void*)0);
 ctx->curl_buf_len = 0;
}
