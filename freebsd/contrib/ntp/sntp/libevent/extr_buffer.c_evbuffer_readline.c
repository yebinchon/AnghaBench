
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;


 int EVBUFFER_EOL_ANY ;
 char* evbuffer_readln (struct evbuffer*,int *,int ) ;

char *
evbuffer_readline(struct evbuffer *buffer)
{
 return evbuffer_readln(buffer, ((void*)0), EVBUFFER_EOL_ANY);
}
