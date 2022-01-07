
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evkeyvalq {int dummy; } ;


 int EVHTTP_PROXY_REQUEST ;
 char* evhttp_find_header (struct evkeyvalq*,char*) ;
 scalar_t__ evutil_ascii_strcasecmp (char const*,char*) ;

__attribute__((used)) static int
evhttp_is_connection_close(int flags, struct evkeyvalq* headers)
{
 if (flags & EVHTTP_PROXY_REQUEST) {

  const char *connection = evhttp_find_header(headers, "Proxy-Connection");
  return (connection == ((void*)0) || evutil_ascii_strcasecmp(connection, "keep-alive") != 0);
 } else {
  const char *connection = evhttp_find_header(headers, "Connection");
  return (connection != ((void*)0) && evutil_ascii_strcasecmp(connection, "close") == 0);
 }
}
