
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int gss_OID_desc ;
typedef TYPE_1__* gss_OID ;
struct TYPE_6__ {int length; void* elements; } ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ ENOMEM ;
 TYPE_1__* const GSS_C_NO_OID ;
 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ GSS_S_FAILURE ;
 int free (TYPE_1__*) ;
 void* malloc (int) ;
 int memcpy (void*,void*,int) ;

OM_uint32 gss_duplicate_oid(OM_uint32 *minor_status,
    const gss_OID src_oid,
    gss_OID *dest_oid_p)
{
 gss_OID dest_oid;

 *minor_status = 0;
 *dest_oid_p = GSS_C_NO_OID;

 if (src_oid == GSS_C_NO_OID)
  return (GSS_S_COMPLETE);

 dest_oid = malloc(sizeof(gss_OID_desc));
 if (!dest_oid) {
  *minor_status = ENOMEM;
  return (GSS_S_FAILURE);
 }

 dest_oid->elements = malloc(src_oid->length);
 if (!dest_oid->elements) {
  free(dest_oid);
  *minor_status = ENOMEM;
  return (GSS_S_FAILURE);
 }

 memcpy(dest_oid->elements, src_oid->elements, src_oid->length);
 dest_oid->length = src_oid->length;

 *dest_oid_p = dest_oid;

 return (GSS_S_COMPLETE);
}
