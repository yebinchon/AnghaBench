
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_server_alias {struct evhttp_server_alias* alias; int aliases; struct evhttp_server_alias* vhost_pattern; int virtualhosts; struct evhttp_server_alias* what; int callbacks; int connections; int listener; int sockets; } ;
struct evhttp_connection {int dummy; } ;
struct evhttp_cb {struct evhttp_cb* alias; int aliases; struct evhttp_cb* vhost_pattern; int virtualhosts; struct evhttp_cb* what; int callbacks; int connections; int listener; int sockets; } ;
struct evhttp_bound_socket {struct evhttp_bound_socket* alias; int aliases; struct evhttp_bound_socket* vhost_pattern; int virtualhosts; struct evhttp_bound_socket* what; int callbacks; int connections; int listener; int sockets; } ;
struct evhttp {struct evhttp* alias; int aliases; struct evhttp* vhost_pattern; int virtualhosts; struct evhttp* what; int callbacks; int connections; int listener; int sockets; } ;


 void* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct evhttp_server_alias*,int ) ;
 int evconnlistener_free (int ) ;
 int evhttp_connection_free (struct evhttp_connection*) ;
 int mm_free (struct evhttp_server_alias*) ;
 int next ;
 int next_vhost ;

void
evhttp_free(struct evhttp* http)
{
 struct evhttp_cb *http_cb;
 struct evhttp_connection *evcon;
 struct evhttp_bound_socket *bound;
 struct evhttp* vhost;
 struct evhttp_server_alias *alias;


 while ((bound = TAILQ_FIRST(&http->sockets)) != ((void*)0)) {
  TAILQ_REMOVE(&http->sockets, bound, next);

  evconnlistener_free(bound->listener);

  mm_free(bound);
 }

 while ((evcon = TAILQ_FIRST(&http->connections)) != ((void*)0)) {

  evhttp_connection_free(evcon);
 }

 while ((http_cb = TAILQ_FIRST(&http->callbacks)) != ((void*)0)) {
  TAILQ_REMOVE(&http->callbacks, http_cb, next);
  mm_free(http_cb->what);
  mm_free(http_cb);
 }

 while ((vhost = TAILQ_FIRST(&http->virtualhosts)) != ((void*)0)) {
  TAILQ_REMOVE(&http->virtualhosts, vhost, next_vhost);

  evhttp_free(vhost);
 }

 if (http->vhost_pattern != ((void*)0))
  mm_free(http->vhost_pattern);

 while ((alias = TAILQ_FIRST(&http->aliases)) != ((void*)0)) {
  TAILQ_REMOVE(&http->aliases, alias, next);
  mm_free(alias->alias);
  mm_free(alias);
 }

 mm_free(http);
}
