
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_uri {char* path; scalar_t__ fragment; scalar_t__ query; int port; int userinfo; scalar_t__ host; scalar_t__ scheme; } ;
struct evbuffer {int dummy; } ;


 int URI_ADD_ (int ) ;
 int evbuffer_add (struct evbuffer*,char*,int) ;
 int evbuffer_add_printf (struct evbuffer*,char*,int ) ;
 int evbuffer_free (struct evbuffer*) ;
 size_t evbuffer_get_length (struct evbuffer*) ;
 struct evbuffer* evbuffer_new () ;
 int evbuffer_remove (struct evbuffer*,char*,size_t) ;
 int fragment ;
 int host ;
 int path ;
 int query ;
 int scheme ;

char *
evhttp_uri_join(struct evhttp_uri *uri, char *buf, size_t limit)
{
 struct evbuffer *tmp = 0;
 size_t joined_size = 0;
 char *output = ((void*)0);



 if (!uri || !buf || !limit)
  return ((void*)0);

 tmp = evbuffer_new();
 if (!tmp)
  return ((void*)0);

 if (uri->scheme) {
  evbuffer_add(tmp, uri->scheme, strlen(uri->scheme));
  evbuffer_add(tmp, ":", 1);
 }
 if (uri->host) {
  evbuffer_add(tmp, "//", 2);
  if (uri->userinfo)
   evbuffer_add_printf(tmp,"%s@", uri->userinfo);
  evbuffer_add(tmp, uri->host, strlen(uri->host));
  if (uri->port >= 0)
   evbuffer_add_printf(tmp,":%d", uri->port);

  if (uri->path && uri->path[0] != '/' && uri->path[0] != '\0')
   goto err;
 }

 if (uri->path)
  evbuffer_add(tmp, uri->path, strlen(uri->path));

 if (uri->query) {
  evbuffer_add(tmp, "?", 1);
  evbuffer_add(tmp, uri->query, strlen(uri->query));
 }

 if (uri->fragment) {
  evbuffer_add(tmp, "#", 1);
  evbuffer_add(tmp, uri->fragment, strlen(uri->fragment));
 }

 evbuffer_add(tmp, "\0", 1);

 joined_size = evbuffer_get_length(tmp);

 if (joined_size > limit) {

  evbuffer_free(tmp);
  return ((void*)0);
 }
        evbuffer_remove(tmp, buf, joined_size);

 output = buf;
err:
 evbuffer_free(tmp);

 return output;

}
