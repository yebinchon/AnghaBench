
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct event_base {int dummy; } ;
struct event {int dummy; } ;
struct evconnlistener {int dummy; } ;
typedef int sin ;
typedef int WSADATA ;


 int AF_INET ;
 int LEV_OPT_CLOSE_ON_FREE ;
 int LEV_OPT_REUSEABLE ;
 int PORT ;
 int SIGINT ;
 int WSAStartup (int,int *) ;
 int evconnlistener_free (struct evconnlistener*) ;
 struct evconnlistener* evconnlistener_new_bind (struct event_base*,int ,void*,int,int,struct sockaddr*,int) ;
 scalar_t__ event_add (struct event*,int *) ;
 int event_base_dispatch (struct event_base*) ;
 int event_base_free (struct event_base*) ;
 struct event_base* event_base_new () ;
 int event_free (struct event*) ;
 struct event* evsignal_new (struct event_base*,int ,int ,void*) ;
 int fprintf (int ,char*) ;
 int htons (int ) ;
 int listener_cb ;
 int memset (struct sockaddr_in*,int ,int) ;
 int printf (char*) ;
 int signal_cb ;
 int stderr ;

int
main(int argc, char **argv)
{
 struct event_base *base;
 struct evconnlistener *listener;
 struct event *signal_event;

 struct sockaddr_in sin;





 base = event_base_new();
 if (!base) {
  fprintf(stderr, "Could not initialize libevent!\n");
  return 1;
 }

 memset(&sin, 0, sizeof(sin));
 sin.sin_family = AF_INET;
 sin.sin_port = htons(PORT);

 listener = evconnlistener_new_bind(base, listener_cb, (void *)base,
     LEV_OPT_REUSEABLE|LEV_OPT_CLOSE_ON_FREE, -1,
     (struct sockaddr*)&sin,
     sizeof(sin));

 if (!listener) {
  fprintf(stderr, "Could not create a listener!\n");
  return 1;
 }

 signal_event = evsignal_new(base, SIGINT, signal_cb, (void *)base);

 if (!signal_event || event_add(signal_event, ((void*)0))<0) {
  fprintf(stderr, "Could not create/add a signal event!\n");
  return 1;
 }

 event_base_dispatch(base);

 evconnlistener_free(listener);
 event_free(signal_event);
 event_base_free(base);

 printf("done\n");
 return 0;
}
