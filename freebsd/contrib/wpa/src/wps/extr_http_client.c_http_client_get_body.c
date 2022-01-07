
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct http_client {struct wpabuf body; int * hread; } ;


 int httpread_data_get (int *) ;
 int httpread_length_get (int *) ;
 int wpabuf_set (struct wpabuf*,int ,int ) ;

struct wpabuf * http_client_get_body(struct http_client *c)
{
 if (c->hread == ((void*)0))
  return ((void*)0);
 wpabuf_set(&c->body, httpread_data_get(c->hread),
     httpread_length_get(c->hread));
 return &c->body;
}
