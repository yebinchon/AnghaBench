
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PortControl ;






__attribute__((used)) static const char * eapol_port_control(PortControl ctrl)
{
 switch (ctrl) {
 case 130:
  return "Auto";
 case 128:
  return "ForceUnauthorized";
 case 129:
  return "ForceAuthorized";
 default:
  return "Unknown";
 }
}
