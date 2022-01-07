
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct httpread {int sd; void (* cb ) (struct httpread*,void*,int) ;int max_bytes; int timeout_seconds; void* cookie; } ;


 int EVENT_TYPE_READ ;
 scalar_t__ eloop_register_sock (int,int ,int ,int *,struct httpread*) ;
 scalar_t__ eloop_register_timeout (int,int ,int ,int *,struct httpread*) ;
 int httpread_destroy (struct httpread*) ;
 int httpread_read_handler ;
 int httpread_timeout_handler ;
 struct httpread* os_zalloc (int) ;

struct httpread * httpread_create(
 int sd,
 void (*cb)(struct httpread *handle, void *cookie,
     enum httpread_event e),
 void *cookie,
 int max_bytes,
 int timeout_seconds
 )
{
 struct httpread *h = ((void*)0);

 h = os_zalloc(sizeof(*h));
 if (h == ((void*)0))
  goto fail;
 h->sd = sd;
 h->cb = cb;
 h->cookie = cookie;
 h->max_bytes = max_bytes;
 h->timeout_seconds = timeout_seconds;

 if (timeout_seconds > 0 &&
     eloop_register_timeout(timeout_seconds, 0,
       httpread_timeout_handler, ((void*)0), h)) {

  goto fail;
 }
 if (eloop_register_sock(sd, EVENT_TYPE_READ, httpread_read_handler,
    ((void*)0), h)) {

  goto fail;
 }
 return h;

fail:


 httpread_destroy(h);
 return ((void*)0);
}
