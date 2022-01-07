
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp {int * vhost_pattern; int virtualhosts; } ;


 int TAILQ_REMOVE (int *,struct evhttp*,int ) ;
 int mm_free (int *) ;
 int next_vhost ;

int
evhttp_remove_virtual_host(struct evhttp* http, struct evhttp* vhost)
{
 if (vhost->vhost_pattern == ((void*)0))
  return (-1);

 TAILQ_REMOVE(&http->virtualhosts, vhost, next_vhost);

 mm_free(vhost->vhost_pattern);
 vhost->vhost_pattern = ((void*)0);

 return (0);
}
