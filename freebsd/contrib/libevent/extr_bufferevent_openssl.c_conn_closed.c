
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bev; } ;
struct bufferevent_openssl {TYPE_1__ bev; scalar_t__ allow_dirty_shutdown; int ssl; } ;


 int BEV_EVENT_EOF ;
 int BEV_EVENT_ERROR ;
 unsigned long ERR_get_error () ;
 int ERR_peek_error () ;
 int SSL_RECEIVED_SHUTDOWN ;
 int SSL_get_shutdown (int ) ;
 int bufferevent_run_eventcb_ (int *,int,int ) ;
 int event_warnx (char*,int) ;
 int put_error (struct bufferevent_openssl*,unsigned long) ;
 int stop_reading (struct bufferevent_openssl*) ;
 int stop_writing (struct bufferevent_openssl*) ;

__attribute__((used)) static void
conn_closed(struct bufferevent_openssl *bev_ssl, int when, int errcode, int ret)
{
 int event = BEV_EVENT_ERROR;
 int dirty_shutdown = 0;
 unsigned long err;

 switch (errcode) {
 case 128:

  if (SSL_get_shutdown(bev_ssl->ssl) & SSL_RECEIVED_SHUTDOWN)
   event = BEV_EVENT_EOF;
  else
   dirty_shutdown = 1;
  break;
 case 134:

  if ((ret == 0 || ret == -1) && ERR_peek_error() == 0)
   dirty_shutdown = 1;
  break;
 case 135:

  break;
 case 129:

  break;
 case 136:
 case 131:
 case 130:
 case 132:
 case 133:
 default:

  event_warnx("BUG: Unexpected OpenSSL error code %d", errcode);
  break;
 }

 while ((err = ERR_get_error())) {
  put_error(bev_ssl, err);
 }

 if (dirty_shutdown && bev_ssl->allow_dirty_shutdown)
  event = BEV_EVENT_EOF;

 stop_reading(bev_ssl);
 stop_writing(bev_ssl);


 event = when | event;
 bufferevent_run_eventcb_(&bev_ssl->bev.bev, event, 0);
}
