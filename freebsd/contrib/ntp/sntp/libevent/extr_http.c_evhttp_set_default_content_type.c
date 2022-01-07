
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp {char const* default_content_type; } ;



void
evhttp_set_default_content_type(struct evhttp *http,
 const char *content_type) {
 http->default_content_type = content_type;
}
