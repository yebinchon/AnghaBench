
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct http_ctx {int * curl_hdr; int * curl; } ;


 int curl_easy_cleanup (int *) ;
 int curl_slist_free_all (int *) ;

__attribute__((used)) static void clear_curl(struct http_ctx *ctx)
{
 if (ctx->curl) {
  curl_easy_cleanup(ctx->curl);
  ctx->curl = ((void*)0);
 }
 if (ctx->curl_hdr) {
  curl_slist_free_all(ctx->curl_hdr);
  ctx->curl_hdr = ((void*)0);
 }
}
