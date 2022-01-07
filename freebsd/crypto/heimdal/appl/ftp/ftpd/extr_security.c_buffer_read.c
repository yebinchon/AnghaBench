
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int size; int index; scalar_t__ data; } ;


 int memcpy (void*,char*,size_t) ;
 size_t min (size_t,int) ;

__attribute__((used)) static size_t
buffer_read(struct buffer *buf, void *dataptr, size_t len)
{
    len = min(len, buf->size - buf->index);
    memcpy(dataptr, (char*)buf->data + buf->index, len);
    buf->index += len;
    return len;
}
