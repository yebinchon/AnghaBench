
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;


 struct evbuffer* calloc (int,int) ;

struct evbuffer *
evbuffer_new(void)
{
 struct evbuffer *buffer;

 buffer = calloc(1, sizeof(struct evbuffer));

 return (buffer);
}
