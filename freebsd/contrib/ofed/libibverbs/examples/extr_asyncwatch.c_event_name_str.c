
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ibv_event_type { ____Placeholder_ibv_event_type } ibv_event_type ;
__attribute__((used)) static const char *event_name_str(enum ibv_event_type event_type)
{
 switch (event_type) {
 case 143:
  return "IBV_EVENT_DEVICE_FATAL";
 case 137:
  return "IBV_EVENT_PORT_ACTIVE";
 case 136:
  return "IBV_EVENT_PORT_ERR";
 case 141:
  return "IBV_EVENT_LID_CHANGE";
 case 138:
  return "IBV_EVENT_PKEY_CHANGE";
 case 131:
  return "IBV_EVENT_SM_CHANGE";
 case 146:
  return "IBV_EVENT_CLIENT_REREGISTER";
 case 142:
  return "IBV_EVENT_GID_CHANGE";

 case 144:
 case 134:
 case 132:
 case 135:
 case 145:
 case 130:
 case 140:
 case 139:
 case 129:
 case 128:
 case 133:
 default:
  return "unexpected";
 }
}
