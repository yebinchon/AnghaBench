
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; } ;
struct bufferevent {int dummy; } ;
struct basic_test_data {int base; } ;
typedef int evutil_socket_t ;
typedef int ev_uint16_t ;


 int EV_TIMEOUT ;
 int bufferevent_free (struct bufferevent*) ;
 int bufferevent_setcb (struct bufferevent*,int ,int ,int ,int ) ;
 struct bufferevent* bufferevent_socket_new (int ,int ,int ) ;
 int bufferevent_write (struct bufferevent*,char const*,int ) ;
 int event_base_dispatch (int ) ;
 int event_base_once (int ,int,int ,int ,struct bufferevent*,struct timeval*) ;
 int evhttp_free (int ) ;
 int evutil_closesocket (int ) ;
 int evutil_timerclear (struct timeval*) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int http ;
 int http_bind (int ,int *,int ) ;
 int http_complete_write ;
 int http_connect (char*,int ) ;
 int http_errorcb ;
 int http_readcb ;
 int http_setup (int *,int ,int ) ;
 int http_writecb ;
 int stdout ;
 int strlen (char const*) ;
 int test_ok ;
 int tt_assert (int) ;

__attribute__((used)) static void
http_basic_test(void *arg)
{
 struct basic_test_data *data = arg;
 struct timeval tv;
 struct bufferevent *bev = ((void*)0);
 evutil_socket_t fd;
 const char *http_request;
 ev_uint16_t port = 0, port2 = 0;

 test_ok = 0;

 http = http_setup(&port, data->base, 0);


 if (http_bind(http, &port2, 0) == -1) {
  fprintf(stdout, "FAILED (bind)\n");
  exit(1);
 }

 fd = http_connect("127.0.0.1", port);


 bev = bufferevent_socket_new(data->base, fd, 0);
 bufferevent_setcb(bev, http_readcb, http_writecb,
     http_errorcb, data->base);


 http_request =
     "GET /test HTTP/1.1\r\n"
     "Host: some";

 bufferevent_write(bev, http_request, strlen(http_request));
 evutil_timerclear(&tv);
 tv.tv_usec = 10000;
 event_base_once(data->base,
     -1, EV_TIMEOUT, http_complete_write, bev, &tv);

 event_base_dispatch(data->base);

 tt_assert(test_ok == 3);


 bufferevent_free(bev);
 evutil_closesocket(fd);

 fd = http_connect("127.0.0.1", port2);


 bev = bufferevent_socket_new(data->base, fd, 0);
 bufferevent_setcb(bev, http_readcb, http_writecb,
     http_errorcb, data->base);

 http_request =
     "GET /test HTTP/1.1\r\n"
     "Host: somehost\r\n"
     "Connection: close\r\n"
     "\r\n";

 bufferevent_write(bev, http_request, strlen(http_request));

 event_base_dispatch(data->base);

 tt_assert(test_ok == 5);


 bufferevent_free(bev);
 evutil_closesocket(fd);

 fd = http_connect("127.0.0.1", port2);


 bev = bufferevent_socket_new(data->base, fd, 0);
 bufferevent_setcb(bev, http_readcb, http_writecb,
     http_errorcb, data->base);

 http_request =
     "GET http://somehost.net/test HTTP/1.1\r\n"
     "Host: somehost\r\n"
     "Connection: close\r\n"
     "\r\n";

 bufferevent_write(bev, http_request, strlen(http_request));

 event_base_dispatch(data->base);

 tt_assert(test_ok == 7);

 evhttp_free(http);
 end:
 if (bev)
  bufferevent_free(bev);
}
