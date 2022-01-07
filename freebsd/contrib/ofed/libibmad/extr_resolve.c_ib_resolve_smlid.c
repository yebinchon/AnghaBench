
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ib_portid_t ;


 int ib_resolve_smlid_via (int *,int,int ) ;
 int ibmp ;

int ib_resolve_smlid(ib_portid_t * sm_id, int timeout)
{
 return ib_resolve_smlid_via(sm_id, timeout, ibmp);
}
