
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct ibmad_port {int dummy; } ;
struct TYPE_4__ {int mgmt_class; int method; int attrid; int mod; int timeout; } ;
typedef TYPE_1__ ib_vendor_call_t ;
typedef int ib_portid_t ;
typedef int call ;


 int fprintf (int ,char*,int,int) ;
 int ib_vendor_call_via (void*,int *,TYPE_1__*,struct ibmad_port*) ;
 int ibd_timeout ;
 int memset (TYPE_1__*,int ,int) ;
 int stderr ;

__attribute__((used)) static int do_vendor(ib_portid_t *portid, struct ibmad_port *srcport,
       uint8_t class, uint8_t method, uint16_t attr_id,
       uint32_t attr_mod, void *data)
{
 ib_vendor_call_t call;

 memset(&call, 0, sizeof(call));
 call.mgmt_class = class;
 call.method = method;
 call.timeout = ibd_timeout;
 call.attrid = attr_id;
 call.mod = attr_mod;

 if (!ib_vendor_call_via(data, portid, &call, srcport)) {
  fprintf(stderr,"vendstat: method %u, attribute %u failure\n", method, attr_id);
  return -1;
 }
 return 0;
}
