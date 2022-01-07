
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct http_ctx {char* curl_buf; size_t curl_buf_len; } ;


 int os_memcpy (char*,void*,size_t) ;
 char* os_realloc (char*,size_t) ;

__attribute__((used)) static size_t curl_cb_write(void *ptr, size_t size, size_t nmemb,
       void *userdata)
{
 struct http_ctx *ctx = userdata;
 char *n;
 n = os_realloc(ctx->curl_buf, ctx->curl_buf_len + size * nmemb + 1);
 if (n == ((void*)0))
  return 0;
 ctx->curl_buf = n;
 os_memcpy(n + ctx->curl_buf_len, ptr, size * nmemb);
 n[ctx->curl_buf_len + size * nmemb] = '\0';
 ctx->curl_buf_len += size * nmemb;
 return size * nmemb;
}
