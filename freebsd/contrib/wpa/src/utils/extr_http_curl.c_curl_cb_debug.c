
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct http_ctx {int dummy; } ;
typedef int curl_infotype ;
typedef int CURL ;
 int MSG_DEBUG ;
 int debug_dump (struct http_ctx*,char*,char*,size_t) ;
 int wpa_printf (int ,char*,int) ;

__attribute__((used)) static int curl_cb_debug(CURL *curl, curl_infotype info, char *buf, size_t len,
    void *userdata)
{
 struct http_ctx *ctx = userdata;
 switch (info) {
 case 128:
  debug_dump(ctx, "CURLINFO_TEXT", buf, len);
  break;
 case 132:
  debug_dump(ctx, "CURLINFO_HEADER_IN", buf, len);
  break;
 case 131:
  debug_dump(ctx, "CURLINFO_HEADER_OUT", buf, len);
  break;
 case 135:
  debug_dump(ctx, "CURLINFO_DATA_IN", buf, len);
  break;
 case 134:
  debug_dump(ctx, "CURLINFO_DATA_OUT", buf, len);
  break;
 case 130:
  wpa_printf(MSG_DEBUG, "debug - CURLINFO_SSL_DATA_IN - %d",
      (int) len);
  break;
 case 129:
  wpa_printf(MSG_DEBUG, "debug - CURLINFO_SSL_DATA_OUT - %d",
      (int) len);
  break;
 case 133:
  wpa_printf(MSG_DEBUG, "debug - CURLINFO_END - %d",
      (int) len);
  break;
 }
 return 0;
}
