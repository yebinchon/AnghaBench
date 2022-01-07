
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_uri {char const* host; } ;



const char *
evhttp_uri_get_host(const struct evhttp_uri *uri)
{
 return uri->host;
}
