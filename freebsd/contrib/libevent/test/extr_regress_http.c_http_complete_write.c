
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int dummy; } ;
typedef int evutil_socket_t ;


 int bufferevent_write (struct bufferevent*,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static void
http_complete_write(evutil_socket_t fd, short what, void *arg)
{
 struct bufferevent *bev = arg;
 const char *http_request = "host\r\n"
     "Connection: close\r\n"
     "\r\n";
 bufferevent_write(bev, http_request, strlen(http_request));
}
