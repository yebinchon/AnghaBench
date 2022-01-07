
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_config {int dummy; } ;
struct event_base {int dummy; } ;
struct event {int dummy; } ;
typedef int evutil_socket_t ;


 int AF_UNIX ;
 int EV_CLOSED ;
 int EV_FEATURE_EARLY_CLOSE ;
 int EV_TIMEOUT ;
 int SHUT_WR ;
 int SOCK_STREAM ;
 int closed_cb ;
 int event_add (struct event*,int *) ;
 int event_base_dispatch (struct event_base*) ;
 int event_base_free (struct event_base*) ;
 struct event_base* event_base_new_with_config (struct event_config*) ;
 int event_config_free (struct event_config*) ;
 struct event_config* event_config_new () ;
 int event_config_require_features (struct event_config*,int ) ;
 struct event* event_new (struct event_base*,int ,int,int ,int ) ;
 int event_self_cbarg () ;
 int evutil_socketpair (int ,int ,int ,int *) ;
 scalar_t__ send (int ,char const*,int,int ) ;
 int shutdown (int ,int ) ;
 scalar_t__ strlen (char const*) ;
 int timeout ;

int
main(int argc, char **argv)
{
 struct event_base *base;
 struct event_config *cfg;
 struct event *ev;
 const char *test = "test string";
 evutil_socket_t pair[2];




 cfg = event_config_new();
 event_config_require_features(cfg, EV_FEATURE_EARLY_CLOSE);
 base = event_base_new_with_config(cfg);
 event_config_free(cfg);
 if (!base) {

  return 0;
 }


 if (evutil_socketpair(AF_UNIX, SOCK_STREAM, 0, pair) == -1)
  return (1);


 if (send(pair[0], test, (int)strlen(test)+1, 0) < 0)
  return (1);
 shutdown(pair[0], SHUT_WR);


 ev = event_new(base, pair[1], EV_CLOSED | EV_TIMEOUT, closed_cb, event_self_cbarg());
 event_add(ev, &timeout);
 event_base_dispatch(base);


 event_base_free(base);
 return 0;
}
