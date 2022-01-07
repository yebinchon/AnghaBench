
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp {int dummy; } ;
typedef int ev_uint16_t ;


 int evhttp_bind_socket (struct evhttp*,char const*,int ) ;
 struct evhttp* evhttp_new_object () ;
 int mm_free (struct evhttp*) ;

struct evhttp *
evhttp_start(const char *address, ev_uint16_t port)
{
 struct evhttp *http = ((void*)0);

 http = evhttp_new_object();
 if (http == ((void*)0))
  return (((void*)0));
 if (evhttp_bind_socket(http, address, port) == -1) {
  mm_free(http);
  return (((void*)0));
 }

 return (http);
}
