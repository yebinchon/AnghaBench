
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct httpread {int sd; struct httpread* uri; struct httpread* body; } ;


 int EVENT_TYPE_READ ;
 int MSG_DEBUG ;
 int eloop_cancel_timeout (int ,int *,struct httpread*) ;
 int eloop_unregister_sock (int,int ) ;
 int httpread_timeout_handler ;
 int os_free (struct httpread*) ;
 int os_memset (struct httpread*,int ,int) ;
 int wpa_printf (int ,char*,struct httpread*) ;

void httpread_destroy(struct httpread *h)
{
 wpa_printf(MSG_DEBUG, "httpread_destroy(%p)", h);
 if (!h)
  return;

 eloop_cancel_timeout(httpread_timeout_handler, ((void*)0), h);
 eloop_unregister_sock(h->sd, EVENT_TYPE_READ);
 os_free(h->body);
 os_free(h->uri);
 os_memset(h, 0, sizeof(*h));
 h->sd = -1;
 os_free(h);
}
