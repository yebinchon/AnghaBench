
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; } ;
struct evhttp {int dummy; } ;
struct bufferevent {int dummy; } ;
struct basic_test_data {int base; } ;
typedef int evutil_socket_t ;
typedef int ev_uint16_t ;


 int EV_TIMEOUT ;
 int HTTP_BIND_SSL ;
 int bufferevent_free (struct bufferevent*) ;
 int bufferevent_setcb (struct bufferevent*,int ,int ,int ,int ) ;
 int bufferevent_write (struct bufferevent*,char const*,int ) ;
 struct bufferevent* create_bev (int ,int ,int) ;
 int event_base_dispatch (int ) ;
 int event_base_once (int ,int,int ,int ,struct bufferevent*,struct timeval*) ;
 int evhttp_free (struct evhttp*) ;
 int evutil_closesocket (int ) ;
 int evutil_timerclear (struct timeval*) ;
 int exit (int) ;
 int exit_base ;
 int fprintf (int ,char*) ;
 int http_bind (struct evhttp*,int *,int) ;
 int http_complete_write ;
 int http_connect (char*,int ) ;
 int http_errorcb ;
 int http_readcb ;
 struct evhttp* http_setup (int *,int ,int) ;
 int http_writecb ;
 int stdout ;
 int strlen (char const*) ;
 int test_ok ;
 int tt_assert (int) ;

__attribute__((used)) static void
http_basic_test_impl(void *arg, int ssl)
{
 struct basic_test_data *data = arg;
 struct timeval tv;
 struct bufferevent *bev = ((void*)0);
 evutil_socket_t fd;
 const char *http_request;
 ev_uint16_t port = 0, port2 = 0;
 int server_flags = ssl ? HTTP_BIND_SSL : 0;
 struct evhttp *http = http_setup(&port, data->base, server_flags);

 exit_base = data->base;
 test_ok = 0;


 if (http_bind(http, &port2, server_flags) == -1) {
  fprintf(stdout, "FAILED (bind)\n");
  exit(1);
 }

 fd = http_connect("127.0.0.1", port);


 bev = create_bev(data->base, fd, ssl);
 bufferevent_setcb(bev, http_readcb, http_writecb,
     http_errorcb, data->base);


 http_request =
     "GET /test HTTP/1.1\r\n"
     "Host: some";

 bufferevent_write(bev, http_request, strlen(http_request));
 evutil_timerclear(&tv);
 tv.tv_usec = 100000;
 event_base_once(data->base,
     -1, EV_TIMEOUT, http_complete_write, bev, &tv);

 event_base_dispatch(data->base);

 tt_assert(test_ok == 3);


 bufferevent_free(bev);
 evutil_closesocket(fd);

 fd = http_connect("127.0.0.1", port2);


 bev = create_bev(data->base, fd, ssl);
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


 bev = create_bev(data->base, fd, ssl);
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
