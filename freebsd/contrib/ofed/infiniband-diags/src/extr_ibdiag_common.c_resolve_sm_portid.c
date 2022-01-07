
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int sm_sl; int sm_lid; } ;
typedef TYPE_1__ umad_port_t ;
typedef int uint8_t ;
struct TYPE_8__ {int sl; int lid; } ;
typedef TYPE_2__ ib_portid_t ;


 int memset (TYPE_2__*,int ,int) ;
 int umad_get_port (char*,int ,TYPE_1__*) ;
 int umad_release_port (TYPE_1__*) ;

int resolve_sm_portid(char *ca_name, uint8_t portnum, ib_portid_t *sm_id)
{
 umad_port_t port;
 int rc;

 if (!sm_id)
  return (-1);

 if ((rc = umad_get_port(ca_name, portnum, &port)) < 0)
  return rc;

 memset(sm_id, 0, sizeof(*sm_id));
 sm_id->lid = port.sm_lid;
 sm_id->sl = port.sm_sl;

 umad_release_port(&port);

 return 0;
}
