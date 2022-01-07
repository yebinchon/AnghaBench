
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t length; int * value; } ;
struct TYPE_5__ {int type; TYPE_1__ buffer; } ;
typedef TYPE_2__ gss_iov_buffer_desc ;
typedef int OM_uint32 ;


 int ENOMEM ;
 int GSS_IOV_BUFFER_FLAG_ALLOCATED ;
 int GSS_S_COMPLETE ;
 int GSS_S_FAILURE ;
 int free (int *) ;
 int * malloc (size_t) ;

OM_uint32
_gk_allocate_buffer(OM_uint32 *minor_status, gss_iov_buffer_desc *buffer, size_t size)
{
    if (buffer->type & GSS_IOV_BUFFER_FLAG_ALLOCATED) {
 if (buffer->buffer.length == size)
     return GSS_S_COMPLETE;
 free(buffer->buffer.value);
    }

    buffer->buffer.value = malloc(size);
    buffer->buffer.length = size;
    if (buffer->buffer.value == ((void*)0)) {
 *minor_status = ENOMEM;
 return GSS_S_FAILURE;
    }
    buffer->type |= GSS_IOV_BUFFER_FLAG_ALLOCATED;

    return GSS_S_COMPLETE;
}
