
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* gss_OID ;
struct TYPE_4__ {size_t length; int elements; } ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ ENOMEM ;
 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ GSS_S_FAILURE ;
 int malloc (size_t) ;
 int memcpy (int ,int ,size_t) ;

OM_uint32
_gss_copy_oid(OM_uint32 *minor_status,
    const gss_OID from_oid, gss_OID to_oid)
{
 size_t len = from_oid->length;

 *minor_status = 0;
 to_oid->elements = malloc(len);
 if (!to_oid->elements) {
  to_oid->length = 0;
  *minor_status = ENOMEM;
  return GSS_S_FAILURE;
 }
 to_oid->length = len;
 memcpy(to_oid->elements, from_oid->elements, len);
 return (GSS_S_COMPLETE);
}
