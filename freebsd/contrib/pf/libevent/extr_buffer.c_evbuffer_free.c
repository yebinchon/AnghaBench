
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {struct evbuffer* orig_buffer; } ;


 int free (struct evbuffer*) ;

void
evbuffer_free(struct evbuffer *buffer)
{
 if (buffer->orig_buffer != ((void*)0))
  free(buffer->orig_buffer);
 free(buffer);
}
