
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {scalar_t__ index; scalar_t__ size; int * data; } ;


 void* malloc (int) ;
 int memcpy (char*,void*,size_t) ;
 void* realloc (int *,scalar_t__) ;

__attribute__((used)) static size_t
buffer_write(struct buffer *buf, void *dataptr, size_t len)
{
    if(buf->index + len > buf->size) {
 void *tmp;
 if(buf->data == ((void*)0))
     tmp = malloc(1024);
 else
     tmp = realloc(buf->data, buf->index + len);
 if(tmp == ((void*)0))
     return -1;
 buf->data = tmp;
 buf->size = buf->index + len;
    }
    memcpy((char*)buf->data + buf->index, dataptr, len);
    buf->index += len;
    return len;
}
