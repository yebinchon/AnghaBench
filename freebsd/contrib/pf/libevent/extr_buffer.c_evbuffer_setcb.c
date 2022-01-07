
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {void (* cb ) (struct evbuffer*,size_t,size_t,void*) ;void* cbarg; } ;



void evbuffer_setcb(struct evbuffer *buffer,
    void (*cb)(struct evbuffer *, size_t, size_t, void *),
    void *cbarg)
{
 buffer->cb = cb;
 buffer->cbarg = cbarg;
}
