
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct http_ctx {char* last_err; char* curl_buf; size_t curl_buf_len; } ;
typedef char const curl_slist ;
typedef int ct ;
typedef scalar_t__ CURLcode ;
typedef int CURL ;


 scalar_t__ CURLE_OK ;
 int CURLINFO_RESPONSE_CODE ;
 int CURLOPT_HTTPHEADER ;
 int CURLOPT_POSTFIELDS ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int MSG_INFO ;
 int MSG_MSGDUMP ;
 int curl_easy_getinfo (int *,int ,long*) ;
 scalar_t__ curl_easy_perform (int *) ;
 int curl_easy_setopt (int *,int ,char const*) ;
 char* curl_easy_strerror (scalar_t__) ;
 char* curl_slist_append (char const*,char const*) ;
 int free_curl_buf (struct http_ctx*) ;
 int * setup_curl_post (struct http_ctx*,char const*,char const*,char const*,char const*,char const*,char const*) ;
 int snprintf (char*,int,char*,char const*) ;
 int wpa_printf (int ,char*,...) ;

char * http_post(struct http_ctx *ctx, const char *url, const char *data,
   const char *content_type, const char *ext_hdr,
   const char *ca_fname,
   const char *username, const char *password,
   const char *client_cert, const char *client_key,
   size_t *resp_len)
{
 long http = 0;
 CURLcode res;
 char *ret;
 CURL *curl;
 struct curl_slist *curl_hdr = ((void*)0);

 ctx->last_err = ((void*)0);
 wpa_printf(MSG_DEBUG, "curl: HTTP POST to %s", url);
 curl = setup_curl_post(ctx, url, ca_fname, username, password,
          client_cert, client_key);
 if (curl == ((void*)0))
  return ((void*)0);

 if (content_type) {
  char ct[200];
  snprintf(ct, sizeof(ct), "Content-Type: %s", content_type);
  curl_hdr = curl_slist_append(curl_hdr, ct);
 }
 if (ext_hdr)
  curl_hdr = curl_slist_append(curl_hdr, ext_hdr);
 curl_easy_setopt(curl, CURLOPT_HTTPHEADER, curl_hdr);

 curl_easy_setopt(curl, CURLOPT_POSTFIELDS, data);
 free_curl_buf(ctx);

 res = curl_easy_perform(curl);
 if (res != CURLE_OK) {
  if (!ctx->last_err)
   ctx->last_err = curl_easy_strerror(res);
  wpa_printf(MSG_ERROR, "curl_easy_perform() failed: %s",
      ctx->last_err);
  free_curl_buf(ctx);
  return ((void*)0);
 }

 curl_easy_getinfo(curl, CURLINFO_RESPONSE_CODE, &http);
 wpa_printf(MSG_DEBUG, "curl: Server response code %ld", http);
 if (http != 200) {
  ctx->last_err = "HTTP POST failed";
  wpa_printf(MSG_INFO, "HTTP POST failed - code %ld", http);
  free_curl_buf(ctx);
  return ((void*)0);
 }

 if (ctx->curl_buf == ((void*)0))
  return ((void*)0);

 ret = ctx->curl_buf;
 if (resp_len)
  *resp_len = ctx->curl_buf_len;
 ctx->curl_buf = ((void*)0);
 ctx->curl_buf_len = 0;

 wpa_printf(MSG_MSGDUMP, "Server response:\n%s", ret);

 return ret;
}
