
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp {int virtualhosts; int * vhost_pattern; int sockets; } ;


 int * TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct evhttp*,int ) ;
 int * mm_strdup (char const*) ;
 int next_vhost ;

int
evhttp_add_virtual_host(struct evhttp* http, const char *pattern,
    struct evhttp* vhost)
{

 if (vhost->vhost_pattern != ((void*)0) ||
     TAILQ_FIRST(&vhost->sockets) != ((void*)0))
  return (-1);

 vhost->vhost_pattern = mm_strdup(pattern);
 if (vhost->vhost_pattern == ((void*)0))
  return (-1);

 TAILQ_INSERT_TAIL(&http->virtualhosts, vhost, next_vhost);

 return (0);
}
