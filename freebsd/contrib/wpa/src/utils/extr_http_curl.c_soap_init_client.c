
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct http_ctx {void* curl_hdr; int curl; } ;


 int CURLOPT_HTTPHEADER ;
 int curl_easy_setopt (int ,int ,void*) ;
 void* curl_slist_append (void*,char*) ;
 scalar_t__ post_init_client (struct http_ctx*,char const*,char const*,char const*,char const*,char const*,char const*) ;

int soap_init_client(struct http_ctx *ctx, const char *address,
       const char *ca_fname, const char *username,
       const char *password, const char *client_cert,
       const char *client_key)
{
 if (post_init_client(ctx, address, ca_fname, username, password,
        client_cert, client_key) < 0)
  return -1;

 ctx->curl_hdr = curl_slist_append(ctx->curl_hdr,
       "Content-Type: application/soap+xml");
 ctx->curl_hdr = curl_slist_append(ctx->curl_hdr, "SOAPAction: ");
 ctx->curl_hdr = curl_slist_append(ctx->curl_hdr, "Expect:");
 curl_easy_setopt(ctx->curl, CURLOPT_HTTPHEADER, ctx->curl_hdr);

 return 0;
}
