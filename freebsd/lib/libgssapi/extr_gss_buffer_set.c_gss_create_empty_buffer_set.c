
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* gss_buffer_set_t ;
struct TYPE_5__ {int * elements; scalar_t__ count; } ;
typedef TYPE_1__ gss_buffer_set_desc ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ ENOMEM ;
 TYPE_1__* GSS_C_NO_BUFFER_SET ;
 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ GSS_S_FAILURE ;
 scalar_t__ malloc (int) ;

OM_uint32
gss_create_empty_buffer_set(OM_uint32 * minor_status,
    gss_buffer_set_t *buffer_set)
{
 gss_buffer_set_t set;

 set = (gss_buffer_set_desc *) malloc(sizeof(*set));
 if (set == GSS_C_NO_BUFFER_SET) {
  *minor_status = ENOMEM;
  return (GSS_S_FAILURE);
 }

 set->count = 0;
 set->elements = ((void*)0);

 *buffer_set = set;

 *minor_status = 0;
 return (GSS_S_COMPLETE);
}
