
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int dummy; } ;
typedef int X509 ;
typedef int SSL ;


 short BEV_EVENT_CONNECTED ;
 short BEV_EVENT_EOF ;
 short BEV_EVENT_ERROR ;
 int * SSL_get_peer_certificate (int *) ;
 int TT_BLATHER (char*) ;
 int bufferevent_free (struct bufferevent*) ;
 int * bufferevent_openssl_get_ssl (struct bufferevent*) ;
 int event_base_loopexit (int ,int *) ;
 int exit_base ;
 int got_close ;
 int got_error ;
 int n_connected ;
 scalar_t__ pending_connect_events ;
 scalar_t__ stop_when_connected ;
 scalar_t__ strcmp (void*,char*) ;
 int tt_assert (int *) ;

__attribute__((used)) static void
eventcb(struct bufferevent *bev, short what, void *ctx)
{
 TT_BLATHER(("Got event %d", (int)what));
 if (what & BEV_EVENT_CONNECTED) {
  SSL *ssl;
  X509 *peer_cert;
  ++n_connected;
  ssl = bufferevent_openssl_get_ssl(bev);
  tt_assert(ssl);
  peer_cert = SSL_get_peer_certificate(ssl);
  if (0==strcmp(ctx, "server")) {
   tt_assert(peer_cert == ((void*)0));
  } else {
   tt_assert(peer_cert != ((void*)0));
  }
  if (stop_when_connected) {
   if (--pending_connect_events == 0)
    event_base_loopexit(exit_base, ((void*)0));
  }
 } else if (what & BEV_EVENT_EOF) {
  TT_BLATHER(("Got a good EOF"));
  ++got_close;
  bufferevent_free(bev);
 } else if (what & BEV_EVENT_ERROR) {
  TT_BLATHER(("Got an error."));
  ++got_error;
  bufferevent_free(bev);
 }
end:
 ;
}
