
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* gss_buffer_t ;
struct TYPE_4__ {size_t length; int value; } ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ ENOMEM ;
 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ GSS_S_FAILURE ;
 int malloc (size_t) ;
 int memcpy (int ,int ,size_t) ;

OM_uint32
_gss_copy_buffer(OM_uint32 *minor_status,
    const gss_buffer_t from_buf, gss_buffer_t to_buf)
{
 size_t len = from_buf->length;

 *minor_status = 0;
 to_buf->value = malloc(len);
 if (!to_buf->value) {
  *minor_status = ENOMEM;
  to_buf->length = 0;
  return GSS_S_FAILURE;
 }
 to_buf->length = len;
 memcpy(to_buf->value, from_buf->value, len);
 return (GSS_S_COMPLETE);
}
