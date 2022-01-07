
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; } ;
struct evhttp {int dummy; } ;
struct bufferevent {int dummy; } ;
struct basic_test_data {int base; } ;
typedef int ev_uint16_t ;


 int EV_READ ;
 int EV_TIMEOUT ;
 int HTTP_BIND_SSL ;
 int bufferevent_disable (struct bufferevent*,int ) ;
 int bufferevent_free (struct bufferevent*) ;
 int bufferevent_setcb (struct bufferevent*,int *,int *,int *,int ) ;
 int bufferevent_write (struct bufferevent*,char const*,int ) ;
 struct bufferevent* create_bev (int ,int,int ) ;
 int event_base_dispatch (int ) ;
 int event_base_once (int ,int,int ,int ,struct bufferevent*,struct timeval*) ;
 int evhttp_free (struct evhttp*) ;
 int evutil_timerclear (struct timeval*) ;
 int exit_base ;
 int http_connect (char*,int ) ;
 struct evhttp* http_setup (int *,int ,int ) ;
 int http_write_during_read ;
 int strlen (char const*) ;
 scalar_t__ test_ok ;

__attribute__((used)) static void
http_write_during_read_test_impl(void *arg, int ssl)
{
 struct basic_test_data *data = arg;
 ev_uint16_t port = 0;
 struct bufferevent *bev = ((void*)0);
 struct timeval tv;
 int fd;
 const char *http_request;
 struct evhttp *http = http_setup(&port, data->base, ssl ? HTTP_BIND_SSL : 0);

 test_ok = 0;
 exit_base = data->base;

 fd = http_connect("127.0.0.1", port);
 bev = create_bev(data->base, fd, 0);
 bufferevent_setcb(bev, ((void*)0), ((void*)0), ((void*)0), data->base);
 bufferevent_disable(bev, EV_READ);

 http_request =
     "GET /large HTTP/1.1\r\n"
     "Host: somehost\r\n"
     "\r\n";

 bufferevent_write(bev, http_request, strlen(http_request));
 evutil_timerclear(&tv);
 tv.tv_usec = 10000;
 event_base_once(data->base, -1, EV_TIMEOUT, http_write_during_read, bev, &tv);

 event_base_dispatch(data->base);

 if (bev)
  bufferevent_free(bev);
 if (http)
  evhttp_free(http);
}
