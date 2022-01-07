
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ib_vendor_call_t ;
typedef int ib_portid_t ;


 int * ib_vendor_call_via (void*,int *,int *,int ) ;
 int ibmp ;

uint8_t *ib_vendor_call(void *data, ib_portid_t * portid,
   ib_vendor_call_t * call)
{
 return ib_vendor_call_via(data, portid, call, ibmp);
}
