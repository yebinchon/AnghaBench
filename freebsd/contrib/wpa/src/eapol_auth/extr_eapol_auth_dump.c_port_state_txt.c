
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PortState ;





__attribute__((used)) static inline const char * port_state_txt(PortState ps)
{
 switch (ps) {
 case 128: return "Unauthorized";
 case 129: return "Authorized";
 default: return "Unknown";
 }
}
