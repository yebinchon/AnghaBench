
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wps_event_ {int subscriber_sequence; int data; TYPE_2__* s; TYPE_1__* addr; } ;
struct wpabuf {int dummy; } ;
struct TYPE_4__ {int uuid; } ;
struct TYPE_3__ {int path; int domain_and_port; } ;


 int os_strlen (char*) ;
 int uuid_bin2str (int ,char*,int) ;
 struct wpabuf* wpabuf_alloc (scalar_t__) ;
 scalar_t__ wpabuf_len (int ) ;
 int wpabuf_printf (struct wpabuf*,char*,int) ;
 char* wpabuf_put (struct wpabuf*,int ) ;
 int wpabuf_put_buf (struct wpabuf*,int ) ;
 int wpabuf_put_str (struct wpabuf*,char*) ;

__attribute__((used)) static struct wpabuf * event_build_message(struct wps_event_ *e)
{
 struct wpabuf *buf;
 char *b;

 buf = wpabuf_alloc(1000 + wpabuf_len(e->data));
 if (buf == ((void*)0))
  return ((void*)0);
 wpabuf_printf(buf, "NOTIFY %s HTTP/1.1\r\n", e->addr->path);
 wpabuf_put_str(buf, "SERVER: Unspecified, UPnP/1.0, Unspecified\r\n");
 wpabuf_printf(buf, "HOST: %s\r\n", e->addr->domain_and_port);
 wpabuf_put_str(buf, "CONTENT-TYPE: text/xml; charset=\"utf-8\"\r\n"
         "NT: upnp:event\r\n"
         "NTS: upnp:propchange\r\n");
 wpabuf_put_str(buf, "SID: uuid:");
 b = wpabuf_put(buf, 0);
 uuid_bin2str(e->s->uuid, b, 80);
 wpabuf_put(buf, os_strlen(b));
 wpabuf_put_str(buf, "\r\n");
 wpabuf_printf(buf, "SEQ: %u\r\n", e->subscriber_sequence);
 wpabuf_printf(buf, "CONTENT-LENGTH: %d\r\n",
        (int) wpabuf_len(e->data));
 wpabuf_put_str(buf, "\r\n");
 wpabuf_put_buf(buf, e->data);
 return buf;
}
