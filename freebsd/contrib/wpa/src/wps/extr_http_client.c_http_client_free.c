
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct http_client {scalar_t__ sd; int req; int hread; } ;


 int EVENT_TYPE_WRITE ;
 int close (scalar_t__) ;
 int eloop_cancel_timeout (int ,struct http_client*,int *) ;
 int eloop_unregister_sock (scalar_t__,int ) ;
 int http_client_timeout ;
 int httpread_destroy (int ) ;
 int os_free (struct http_client*) ;
 int wpabuf_free (int ) ;

void http_client_free(struct http_client *c)
{
 if (c == ((void*)0))
  return;
 httpread_destroy(c->hread);
 wpabuf_free(c->req);
 if (c->sd >= 0) {
  eloop_unregister_sock(c->sd, EVENT_TYPE_WRITE);
  close(c->sd);
 }
 eloop_cancel_timeout(http_client_timeout, c, ((void*)0));
 os_free(c);
}
