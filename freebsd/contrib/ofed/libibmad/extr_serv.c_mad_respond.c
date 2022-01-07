
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int ib_portid_t ;


 int ibmp ;
 int mad_respond_via (void*,int *,int ,int ) ;

int mad_respond(void *umad, ib_portid_t * portid, uint32_t rstatus)
{
 return mad_respond_via(umad, portid, rstatus, ibmp);
}
