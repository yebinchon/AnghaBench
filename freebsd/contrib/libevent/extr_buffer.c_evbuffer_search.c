
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer_ptr {int dummy; } ;
struct evbuffer {int dummy; } ;


 struct evbuffer_ptr evbuffer_search_range (struct evbuffer*,char const*,size_t,struct evbuffer_ptr const*,int *) ;

struct evbuffer_ptr
evbuffer_search(struct evbuffer *buffer, const char *what, size_t len, const struct evbuffer_ptr *start)
{
 return evbuffer_search_range(buffer, what, len, start, ((void*)0));
}
