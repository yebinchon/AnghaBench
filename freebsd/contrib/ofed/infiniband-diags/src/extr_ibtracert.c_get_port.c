
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ib_portid_t ;
struct TYPE_3__ {int portnum; int physstate; int state; int lid; int lmc; } ;
typedef TYPE_1__ Port ;


 int IB_ATTR_PORT_INFO ;
 int IB_PORT_LID_F ;
 int IB_PORT_LMC_F ;
 int IB_PORT_PHYS_STATE_F ;
 int IB_PORT_STATE_F ;
 int VERBOSE (char*,int ,int,int ,int ,int ) ;
 int mad_decode_field (void*,int ,int *) ;
 int portid2str (int *) ;
 int smp_query_via (void*,int *,int ,int,int ,int ) ;
 int srcport ;
 int timeout ;

__attribute__((used)) static int get_port(Port * port, int portnum, ib_portid_t * portid)
{
 char portinfo[64] = { 0 };
 void *pi = portinfo;

 port->portnum = portnum;

 if (!smp_query_via(pi, portid, IB_ATTR_PORT_INFO, portnum, timeout,
      srcport))
  return -1;

 mad_decode_field(pi, IB_PORT_LID_F, &port->lid);
 mad_decode_field(pi, IB_PORT_LMC_F, &port->lmc);
 mad_decode_field(pi, IB_PORT_STATE_F, &port->state);
 mad_decode_field(pi, IB_PORT_PHYS_STATE_F, &port->physstate);

 VERBOSE("portid %s portnum %d: lid %d state %d physstate %d",
  portid2str(portid), portnum, port->lid, port->state,
  port->physstate);
 return 1;
}
