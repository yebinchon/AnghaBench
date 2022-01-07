
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;


 int os_memset (int ,int ,int ) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;
 int wpabuf_mhead (struct wpabuf*) ;

void wpabuf_clear_free(struct wpabuf *buf)
{
 if (buf) {
  os_memset(wpabuf_mhead(buf), 0, wpabuf_len(buf));
  wpabuf_free(buf);
 }
}
