
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpabuf {int dummy; } ;
struct TYPE_2__ {int sin_port; int sin_addr; } ;
struct http_request {int fd; TYPE_1__ cli; } ;


 int MSG_DEBUG ;
 int errno ;
 int inet_ntoa (int ) ;
 int ntohs (int ) ;
 int send (int ,int ,size_t,int ) ;
 int strerror (int ) ;
 int wpa_printf (int ,char*,int,...) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_head (struct wpabuf*) ;
 size_t wpabuf_len (struct wpabuf*) ;

void http_request_send(struct http_request *req, struct wpabuf *resp)
{
 int res;

 wpa_printf(MSG_DEBUG, "HTTP: Send %lu byte response to %s:%d",
     (unsigned long) wpabuf_len(resp),
     inet_ntoa(req->cli.sin_addr),
     ntohs(req->cli.sin_port));

 res = send(req->fd, wpabuf_head(resp), wpabuf_len(resp), 0);
 if (res < 0) {
  wpa_printf(MSG_DEBUG, "HTTP: Send failed: %s",
      strerror(errno));
 } else if ((size_t) res < wpabuf_len(resp)) {
  wpa_printf(MSG_DEBUG, "HTTP: Sent only %d of %lu bytes",
      res, (unsigned long) wpabuf_len(resp));

 }

 wpabuf_free(resp);
}
