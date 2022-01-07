
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rdma_cm_event_type { ____Placeholder_rdma_cm_event_type } rdma_cm_event_type ;
const char *rdma_event_str(enum rdma_cm_event_type event)
{
 switch (event) {
 case 141:
  return "RDMA_CM_EVENT_ADDR_RESOLVED";
 case 142:
  return "RDMA_CM_EVENT_ADDR_ERROR";
 case 130:
  return "RDMA_CM_EVENT_ROUTE_RESOLVED";
 case 131:
  return "RDMA_CM_EVENT_ROUTE_ERROR";
 case 139:
  return "RDMA_CM_EVENT_CONNECT_REQUEST";
 case 138:
  return "RDMA_CM_EVENT_CONNECT_RESPONSE";
 case 140:
  return "RDMA_CM_EVENT_CONNECT_ERROR";
 case 128:
  return "RDMA_CM_EVENT_UNREACHABLE";
 case 132:
  return "RDMA_CM_EVENT_REJECTED";
 case 135:
  return "RDMA_CM_EVENT_ESTABLISHED";
 case 136:
  return "RDMA_CM_EVENT_DISCONNECTED";
 case 137:
  return "RDMA_CM_EVENT_DEVICE_REMOVAL";
 case 133:
  return "RDMA_CM_EVENT_MULTICAST_JOIN";
 case 134:
  return "RDMA_CM_EVENT_MULTICAST_ERROR";
 case 143:
  return "RDMA_CM_EVENT_ADDR_CHANGE";
 case 129:
  return "RDMA_CM_EVENT_TIMEWAIT_EXIT";
 default:
  return "UNKNOWN EVENT";
 }
}
