
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ibmad_gid_t ;
typedef int ib_portid_t ;


 int ib_resolve_self_via (int *,int*,int *,int ) ;
 int ibmp ;

int ib_resolve_self(ib_portid_t * portid, int *portnum, ibmad_gid_t * gid)
{
 return ib_resolve_self_via(portid, portnum, gid, ibmp);
}
