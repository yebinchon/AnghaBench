
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct ibmad_port {int* class_agents; int port_id; } ;
typedef int class_method_mask ;


 int DEBUG (char*,int,...) ;
 int IB_VENDOR_RANGE2_END_CLASS ;
 int IB_VENDOR_RANGE2_START_CLASS ;
 int memcpy (long*,long*,int) ;
 int memset (long*,int,int) ;
 int mgmt_class_vers (int) ;
 int umad_register (int ,int,int,int,long*) ;
 int umad_register_oui (int ,int,int,int*,long*) ;

int mad_register_server_via(int mgmt, uint8_t rmpp_version,
       long method_mask[], uint32_t class_oui,
       struct ibmad_port *srcport)
{
 long class_method_mask[16 / sizeof(long)];
 uint8_t oui[3];
 int agent, vers;

 if (method_mask)
  memcpy(class_method_mask, method_mask,
         sizeof class_method_mask);
 else
  memset(class_method_mask, 0xff, sizeof(class_method_mask));

 if (!srcport)
  return -1;

 if (srcport->class_agents[mgmt] >= 0) {
  DEBUG("Class 0x%x already registered %d",
        mgmt, srcport->class_agents[mgmt]);
  return -1;
 }
 if ((vers = mgmt_class_vers(mgmt)) <= 0) {
  DEBUG("Unknown class 0x%x mgmt_class", mgmt);
  return -1;
 }
 if (mgmt >= IB_VENDOR_RANGE2_START_CLASS &&
     mgmt <= IB_VENDOR_RANGE2_END_CLASS) {
  oui[0] = (class_oui >> 16) & 0xff;
  oui[1] = (class_oui >> 8) & 0xff;
  oui[2] = class_oui & 0xff;
  if ((agent =
       umad_register_oui(srcport->port_id, mgmt, rmpp_version,
           oui, class_method_mask)) < 0) {
   DEBUG("Can't register agent for class %d", mgmt);
   return -1;
  }
 } else
     if ((agent =
   umad_register(srcport->port_id, mgmt, vers, rmpp_version,
          class_method_mask)) < 0) {
  DEBUG("Can't register agent for class %d", mgmt);
  return -1;
 }

 srcport->class_agents[mgmt] = agent;

 return agent;
}
