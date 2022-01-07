
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* gss_OID ;
struct TYPE_5__ {scalar_t__ length; struct TYPE_5__* elements; } ;
typedef scalar_t__ OM_uint32 ;


 TYPE_1__* GSS_C_NO_OID ;
 scalar_t__ GSS_S_COMPLETE ;
 int free (TYPE_1__*) ;

OM_uint32
gss_release_oid(OM_uint32 *minor_status, gss_OID *oid)
{
 gss_OID o = *oid;

 *oid = GSS_C_NO_OID;

 if (minor_status != ((void*)0))
  *minor_status = 0;

 if (o == GSS_C_NO_OID)
  return (GSS_S_COMPLETE);

 if (o->elements != ((void*)0)) {
  free(o->elements);
  o->elements = ((void*)0);
 }
 o->length = 0;
 free(o);

 return (GSS_S_COMPLETE);
}
