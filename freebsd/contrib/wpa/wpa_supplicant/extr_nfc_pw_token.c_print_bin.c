
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;


 int printf (char*,...) ;
 int * wpabuf_head (struct wpabuf const*) ;
 size_t wpabuf_len (struct wpabuf const*) ;

__attribute__((used)) static void print_bin(const char *title, const struct wpabuf *buf)
{
 size_t i, len;
 const u8 *pos;

 if (buf == ((void*)0))
  return;

 printf("%s=", title);

 pos = wpabuf_head(buf);
 len = wpabuf_len(buf);
 for (i = 0; i < len; i++)
  printf("%02X", *pos++);

 printf("\n");
}
