
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int dummy; } ;
struct be_conn_hostname_result {short what; int dnserr; } ;


 short BEV_EVENT_CONNECTED ;
 short BEV_EVENT_ERROR ;
 int TT_BLATHER (char*) ;
 int TT_FAIL (char*) ;
 int be_connect_hostname_base ;
 int bufferevent_socket_get_dns_error (struct bufferevent*) ;
 int event_base_loopexit (int ,int *) ;
 int evutil_gai_strerror (int) ;
 int total_connected_or_failed ;
 int total_n_accepted ;

__attribute__((used)) static void
be_connect_hostname_event_cb(struct bufferevent *bev, short what, void *ctx)
{
 struct be_conn_hostname_result *got = ctx;
 if (!got->what) {
  TT_BLATHER(("Got a bufferevent event %d", what));
  got->what = what;

  if ((what & BEV_EVENT_CONNECTED) || (what & BEV_EVENT_ERROR)) {
   int r;
   if ((r = bufferevent_socket_get_dns_error(bev))) {
    got->dnserr = r;
    TT_BLATHER(("DNS error %d: %s", r,
        evutil_gai_strerror(r)));
   } ++total_connected_or_failed;
   TT_BLATHER(("Got %d connections or errors.", total_connected_or_failed));

   if (total_n_accepted >= 3 && total_connected_or_failed >= 5)
    event_base_loopexit(be_connect_hostname_base,
        ((void*)0));
  }
 } else {
  TT_FAIL(("Two events on one bufferevent. %d,%d",
   got->what, (int)what));
 }
}
