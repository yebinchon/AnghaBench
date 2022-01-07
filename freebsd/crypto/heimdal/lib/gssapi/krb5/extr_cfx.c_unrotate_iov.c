
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {size_t length; int * value; } ;
struct TYPE_5__ {TYPE_1__ buffer; int type; } ;
typedef TYPE_2__ gss_iov_buffer_desc ;
typedef int OM_uint32 ;


 int ENOMEM ;
 scalar_t__ GSS_IOV_BUFFER_TYPE (int ) ;
 scalar_t__ GSS_IOV_BUFFER_TYPE_DATA ;
 scalar_t__ GSS_IOV_BUFFER_TYPE_PADDING ;
 scalar_t__ GSS_IOV_BUFFER_TYPE_TRAILER ;
 int GSS_S_COMPLETE ;
 int GSS_S_FAILURE ;
 int assert (int) ;
 int * malloc (size_t) ;
 int memcpy (int *,int *,size_t) ;
 size_t min (size_t,size_t) ;

__attribute__((used)) static OM_uint32
unrotate_iov(OM_uint32 *minor_status, size_t rrc, gss_iov_buffer_desc *iov, int iov_count)
{
    uint8_t *p, *q;
    size_t len = 0, skip;
    int i;

    for (i = 0; i < iov_count; i++)
 if (GSS_IOV_BUFFER_TYPE(iov[i].type) == GSS_IOV_BUFFER_TYPE_DATA ||
     GSS_IOV_BUFFER_TYPE(iov[i].type) == GSS_IOV_BUFFER_TYPE_PADDING ||
     GSS_IOV_BUFFER_TYPE(iov[i].type) == GSS_IOV_BUFFER_TYPE_TRAILER)
     len += iov[i].buffer.length;

    p = malloc(len);
    if (p == ((void*)0)) {
 *minor_status = ENOMEM;
 return GSS_S_FAILURE;
    }
    q = p;



    for (i = 0; i < iov_count; i++) {
 if (GSS_IOV_BUFFER_TYPE(iov[i].type) == GSS_IOV_BUFFER_TYPE_DATA ||
     GSS_IOV_BUFFER_TYPE(iov[i].type) == GSS_IOV_BUFFER_TYPE_PADDING ||
     GSS_IOV_BUFFER_TYPE(iov[i].type) == GSS_IOV_BUFFER_TYPE_TRAILER)
 {
     memcpy(q, iov[i].buffer.value, iov[i].buffer.length);
     q += iov[i].buffer.length;
 }
    }
    assert((size_t)(q - p) == len);


    q = p + rrc;
    skip = rrc;
    for (i = 0; i < iov_count; i++) {
 if (GSS_IOV_BUFFER_TYPE(iov[i].type) == GSS_IOV_BUFFER_TYPE_DATA ||
     GSS_IOV_BUFFER_TYPE(iov[i].type) == GSS_IOV_BUFFER_TYPE_PADDING ||
     GSS_IOV_BUFFER_TYPE(iov[i].type) == GSS_IOV_BUFFER_TYPE_TRAILER)
 {
     if (iov[i].buffer.length <= skip) {
  skip -= iov[i].buffer.length;
     } else {
  memcpy(((uint8_t *)iov[i].buffer.value) + skip, q, iov[i].buffer.length - skip);
  q += iov[i].buffer.length - skip;
  skip = 0;
     }
 }
    }

    q = p;
    skip = rrc;
    for (i = 0; i < iov_count; i++) {
 if (GSS_IOV_BUFFER_TYPE(iov[i].type) == GSS_IOV_BUFFER_TYPE_DATA ||
     GSS_IOV_BUFFER_TYPE(iov[i].type) == GSS_IOV_BUFFER_TYPE_PADDING ||
     GSS_IOV_BUFFER_TYPE(iov[i].type) == GSS_IOV_BUFFER_TYPE_TRAILER)
 {
     memcpy(q, iov[i].buffer.value, min(iov[i].buffer.length, skip));
     if (iov[i].buffer.length > skip)
  break;
     skip -= iov[i].buffer.length;
     q += iov[i].buffer.length;
 }
    }
    return GSS_S_COMPLETE;
}
