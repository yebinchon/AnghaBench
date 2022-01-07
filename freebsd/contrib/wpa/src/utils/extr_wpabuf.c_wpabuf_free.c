
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf_trace {scalar_t__ magic; int flags; struct wpabuf_trace* buf; } ;
struct wpabuf {scalar_t__ magic; int flags; struct wpabuf* buf; } ;


 int MSG_ERROR ;
 int WPABUF_FLAG_EXT_DATA ;
 scalar_t__ WPABUF_MAGIC ;
 int abort () ;
 int os_free (struct wpabuf_trace*) ;
 int wpa_printf (int ,char*,scalar_t__) ;
 int wpa_trace_show (char*) ;
 struct wpabuf_trace* wpabuf_get_trace (struct wpabuf_trace*) ;

void wpabuf_free(struct wpabuf *buf)
{
 if (buf == ((void*)0))
  return;
 if (buf->flags & WPABUF_FLAG_EXT_DATA)
  os_free(buf->buf);
 os_free(buf);

}
