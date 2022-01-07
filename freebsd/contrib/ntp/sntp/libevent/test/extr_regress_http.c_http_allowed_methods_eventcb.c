
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int dummy; } ;
typedef int buf ;


 short BEV_EVENT_EOF ;
 short BEV_EVENT_ERROR ;
 int bufferevent_get_input (struct bufferevent*) ;
 int evbuffer_remove (int ,char*,int) ;
 int event_base_loopexit (int ,int *) ;
 int exit_base ;
 int free (char*) ;
 char* strdup (char*) ;

__attribute__((used)) static void
http_allowed_methods_eventcb(struct bufferevent *bev, short what, void *arg)
{
 char **output = arg;
 if ((what & (BEV_EVENT_ERROR|BEV_EVENT_EOF))) {
  char buf[4096];
  int n;
  n = evbuffer_remove(bufferevent_get_input(bev), buf,
      sizeof(buf)-1);
  if (n >= 0) {
   buf[n]='\0';
   if (*output)
    free(*output);
   *output = strdup(buf);
  }
  event_base_loopexit(exit_base, ((void*)0));
 }
}
