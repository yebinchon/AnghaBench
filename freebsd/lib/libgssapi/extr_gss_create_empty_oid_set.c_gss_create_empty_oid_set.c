
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int gss_OID_set_desc ;
typedef TYPE_1__* gss_OID_set ;
struct TYPE_5__ {scalar_t__ elements; scalar_t__ count; } ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ ENOMEM ;
 TYPE_1__* GSS_C_NO_OID_SET ;
 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ GSS_S_FAILURE ;
 TYPE_1__* malloc (int) ;

OM_uint32
gss_create_empty_oid_set(OM_uint32 *minor_status,
    gss_OID_set *oid_set)
{
 gss_OID_set set;

 *minor_status = 0;
 *oid_set = GSS_C_NO_OID_SET;

 set = malloc(sizeof(gss_OID_set_desc));
 if (!set) {
  *minor_status = ENOMEM;
  return (GSS_S_FAILURE);
 }

 set->count = 0;
 set->elements = 0;
 *oid_set = set;

 return (GSS_S_COMPLETE);
}
