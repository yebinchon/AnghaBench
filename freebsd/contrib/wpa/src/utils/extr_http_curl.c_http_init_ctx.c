
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xml_node_ctx {int dummy; } ;
struct http_ctx {int ocsp; struct xml_node_ctx* xml; void* ctx; } ;


 int CURL_GLOBAL_ALL ;
 int OPTIONAL_OCSP ;
 int curl_global_init (int ) ;
 struct http_ctx* os_zalloc (int) ;

struct http_ctx * http_init_ctx(void *upper_ctx, struct xml_node_ctx *xml_ctx)
{
 struct http_ctx *ctx;

 ctx = os_zalloc(sizeof(*ctx));
 if (ctx == ((void*)0))
  return ((void*)0);
 ctx->ctx = upper_ctx;
 ctx->xml = xml_ctx;
 ctx->ocsp = OPTIONAL_OCSP;

 curl_global_init(CURL_GLOBAL_ALL);

 return ctx;
}
