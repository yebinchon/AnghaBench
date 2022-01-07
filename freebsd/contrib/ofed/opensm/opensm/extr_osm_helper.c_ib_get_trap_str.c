
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ib_net16_t ;
 int cl_ntoh16 (int ) ;

const char *ib_get_trap_str(ib_net16_t trap_num)
{
 switch (cl_ntoh16(trap_num)) {
 case 138:
  return "GID in service";
 case 137:
  return "GID out of service";
 case 133:
  return "New mcast group created";
 case 132:
  return "Mcast group deleted";
 case 129:
  return "UnPath, Path no longer valid";
 case 131:
  return "RePath, Path recomputed";
 case 135:
  return "Link state change";
 case 136:
  return "Local Link integrity threshold reached";
 case 139:
  return "Excessive Buffer Overrun Threshold reached";
 case 128:
  return "Flow Control Update watchdog timer expired";
 case 134:
  return
      "CapabilityMask, NodeDescription, Link [Width|Speed] Enabled, SM priority changed";
 case 130:
  return "System Image GUID changed";
 case 143:
  return "Bad M_Key";
 case 142:
  return "Bad P_Key";
 case 141:
  return "Bad Q_Key";
 case 140:
  return "Bad P_Key (switch external port)";
 default:
  break;
 }
 return "Unknown";
}
