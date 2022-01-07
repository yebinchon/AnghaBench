
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;
typedef int ev_ssize_t ;


 int evbuffer_copyout_from (struct evbuffer*,int *,void*,size_t) ;

ev_ssize_t
evbuffer_copyout(struct evbuffer *buf, void *data_out, size_t datlen)
{
 return evbuffer_copyout_from(buf, ((void*)0), data_out, datlen);
}
