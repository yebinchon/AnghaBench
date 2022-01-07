
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int sm_lid; int base_lid; } ;
typedef TYPE_2__ umad_port_t ;
struct TYPE_7__ {int sm_lid; int base_lid; int portnum; int ca_name; } ;
struct TYPE_9__ {TYPE_1__ umad_port; } ;
typedef TYPE_3__ osm_vendor_t ;
typedef int ib_api_status_t ;


 int IB_ERROR ;
 int IB_SUCCESS ;
 scalar_t__ umad_get_port (int ,int ,TYPE_2__*) ;
 int umad_release_port (TYPE_2__*) ;

__attribute__((used)) static ib_api_status_t update_umad_port(osm_vendor_t * p_vend)
{
 umad_port_t port;
 if (umad_get_port(p_vend->umad_port.ca_name,
     p_vend->umad_port.portnum, &port) < 0)
  return IB_ERROR;
 p_vend->umad_port.base_lid = port.base_lid;
 p_vend->umad_port.sm_lid = port.sm_lid;
 umad_release_port(&port);
 return IB_SUCCESS;
}
