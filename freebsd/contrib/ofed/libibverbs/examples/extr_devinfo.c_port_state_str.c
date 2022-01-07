
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ibv_port_state { ____Placeholder_ibv_port_state } ibv_port_state ;







__attribute__((used)) static const char *port_state_str(enum ibv_port_state pstate)
{
 switch (pstate) {
 case 129: return "PORT_DOWN";
 case 128: return "PORT_INIT";
 case 130: return "PORT_ARMED";
 case 131: return "PORT_ACTIVE";
 default: return "invalid state";
 }
}
