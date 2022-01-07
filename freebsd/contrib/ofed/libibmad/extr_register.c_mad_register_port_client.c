
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int DEBUG (char*,int) ;
 int mgmt_class_vers (int) ;
 int umad_register (int,int,int,int ,int ) ;

int mad_register_port_client(int port_id, int mgmt, uint8_t rmpp_version)
{
 int vers, agent;

 if ((vers = mgmt_class_vers(mgmt)) <= 0) {
  DEBUG("Unknown class %d mgmt_class", mgmt);
  return -1;
 }

 agent = umad_register(port_id, mgmt, vers, rmpp_version, 0);
 if (agent < 0)
  DEBUG("Can't register agent for class %d", mgmt);

 return agent;
}
