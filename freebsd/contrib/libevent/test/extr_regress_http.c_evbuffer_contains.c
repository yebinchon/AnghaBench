
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer_ptr {int pos; } ;
struct evbuffer {int dummy; } ;


 struct evbuffer_ptr evbuffer_search (struct evbuffer*,char const*,int ,int *) ;
 int strlen (char const*) ;

__attribute__((used)) static int
evbuffer_contains(struct evbuffer *buf, const char *s)
{
 struct evbuffer_ptr ptr;
 ptr = evbuffer_search(buf, s, strlen(s), ((void*)0));
 return ptr.pos != -1;
}
