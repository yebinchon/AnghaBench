
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const http_ctx ;
typedef int CURL ;


 char const* CURLAUTH_ANYSAFE ;
 int CURLOPT_CAINFO ;
 int CURLOPT_CERTINFO ;
 int CURLOPT_DEBUGDATA ;
 int CURLOPT_DEBUGFUNCTION ;
 int CURLOPT_HTTPAUTH ;
 int CURLOPT_PASSWORD ;
 int CURLOPT_POST ;
 int CURLOPT_SSLCERT ;
 int CURLOPT_SSLKEY ;
 int CURLOPT_SSL_CTX_DATA ;
 int CURLOPT_SSL_CTX_FUNCTION ;
 int CURLOPT_SSL_VERIFYPEER ;
 int CURLOPT_SSL_VERIFYSTATUS ;
 int CURLOPT_URL ;
 int CURLOPT_USERNAME ;
 int CURLOPT_VERBOSE ;
 int CURLOPT_WRITEDATA ;
 int CURLOPT_WRITEFUNCTION ;
 int MSG_DEBUG ;
 scalar_t__ NO_OCSP ;
 char const* curl_cb_debug ;
 char const* curl_cb_ssl ;
 char const* curl_cb_write ;
 int * curl_easy_init () ;
 int curl_easy_setopt (int *,int ,...) ;
 int wpa_printf (int ,char*,char const*,char const*,char const*,char const*) ;

__attribute__((used)) static CURL * setup_curl_post(struct http_ctx *ctx, const char *address,
         const char *ca_fname, const char *username,
         const char *password, const char *client_cert,
         const char *client_key)
{
 CURL *curl;



 const char *extra = "";


 wpa_printf(MSG_DEBUG, "Start HTTP client: address=%s ca_fname=%s "
     "username=%s%s", address, ca_fname, username, extra);

 curl = curl_easy_init();
 if (curl == ((void*)0))
  return ((void*)0);

 curl_easy_setopt(curl, CURLOPT_URL, address);
 curl_easy_setopt(curl, CURLOPT_POST, 1L);
 if (ca_fname) {
  curl_easy_setopt(curl, CURLOPT_CAINFO, ca_fname);
  curl_easy_setopt(curl, CURLOPT_SSL_VERIFYPEER, 1L);
 } else {
  curl_easy_setopt(curl, CURLOPT_SSL_VERIFYPEER, 0L);
 }
 if (client_cert && client_key) {
  curl_easy_setopt(curl, CURLOPT_SSLCERT, client_cert);
  curl_easy_setopt(curl, CURLOPT_SSLKEY, client_key);
 }


 curl_easy_setopt(curl, CURLOPT_CERTINFO, 1L);
 curl_easy_setopt(curl, CURLOPT_DEBUGFUNCTION, curl_cb_debug);
 curl_easy_setopt(curl, CURLOPT_DEBUGDATA, ctx);
 curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, curl_cb_write);
 curl_easy_setopt(curl, CURLOPT_WRITEDATA, ctx);
 curl_easy_setopt(curl, CURLOPT_VERBOSE, 1L);
 if (username) {
  curl_easy_setopt(curl, CURLOPT_HTTPAUTH, CURLAUTH_ANYSAFE);
  curl_easy_setopt(curl, CURLOPT_USERNAME, username);
  curl_easy_setopt(curl, CURLOPT_PASSWORD, password);
 }

 return curl;
}
