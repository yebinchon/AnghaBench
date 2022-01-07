
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ib_portid_t ;
typedef enum MAD_DEST { ____Placeholder_MAD_DEST } MAD_DEST ;


 int ib_resolve_portid_str_via (int *,char*,int,int *,int ) ;
 int ibmp ;

int ib_resolve_portid_str(ib_portid_t * portid, char *addr_str,
     enum MAD_DEST dest_type, ib_portid_t * sm_id)
{
 return ib_resolve_portid_str_via(portid, addr_str, dest_type,
      sm_id, ibmp);
}
