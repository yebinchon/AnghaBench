
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* gss_OID ;
struct TYPE_3__ {scalar_t__ length; int * elements; } ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ GSS_S_COMPLETE ;
 int free (int *) ;

OM_uint32
_gss_free_oid(OM_uint32 *minor_status, gss_OID oid)
{
 *minor_status = 0;
 if (oid->elements) {
     free(oid->elements);
     oid->elements = ((void*)0);
     oid->length = 0;
 }
 return (GSS_S_COMPLETE);
}
