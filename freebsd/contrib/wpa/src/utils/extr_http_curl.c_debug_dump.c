
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct http_ctx {int dummy; } ;


 int MSG_MSGDUMP ;
 int os_free (char*) ;
 char* os_malloc (size_t) ;
 int os_memcpy (char*,char const*,size_t) ;
 int wpa_hexdump_ascii (int ,char const*,char const*,size_t) ;
 int wpa_printf (int ,char*,char const*,char*) ;

__attribute__((used)) static void debug_dump(struct http_ctx *ctx, const char *title,
         const char *buf, size_t len)
{
 char *txt;
 size_t i;

 for (i = 0; i < len; i++) {
  if (buf[i] < 32 && buf[i] != '\t' && buf[i] != '\n' &&
      buf[i] != '\r') {
   wpa_hexdump_ascii(MSG_MSGDUMP, title, buf, len);
   return;
  }
 }

 txt = os_malloc(len + 1);
 if (txt == ((void*)0))
  return;
 os_memcpy(txt, buf, len);
 txt[len] = '\0';
 while (len > 0) {
  len--;
  if (txt[len] == '\n' || txt[len] == '\r')
   txt[len] = '\0';
  else
   break;
 }
 wpa_printf(MSG_MSGDUMP, "%s[%s]", title, txt);
 os_free(txt);
}
