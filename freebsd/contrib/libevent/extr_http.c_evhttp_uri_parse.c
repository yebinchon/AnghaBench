
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_uri {int dummy; } ;


 struct evhttp_uri* evhttp_uri_parse_with_flags (char const*,int ) ;

struct evhttp_uri *
evhttp_uri_parse(const char *source_uri)
{
 return evhttp_uri_parse_with_flags(source_uri, 0);
}
