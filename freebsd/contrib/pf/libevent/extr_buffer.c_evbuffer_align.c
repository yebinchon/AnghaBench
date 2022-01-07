
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {scalar_t__ misalign; int orig_buffer; int buffer; int off; } ;


 int memmove (int ,int ,int ) ;

__attribute__((used)) static inline void
evbuffer_align(struct evbuffer *buf)
{
 memmove(buf->orig_buffer, buf->buffer, buf->off);
 buf->buffer = buf->orig_buffer;
 buf->misalign = 0;
}
