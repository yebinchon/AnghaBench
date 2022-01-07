
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 int NUM_REPLY_TYPES ;
 int NUM_REQ_TYPES ;
 int RPCAP_MSG_IS_REPLY ;
 char const** replies ;
 char const** requests ;

const char *
rpcap_msg_type_string(uint8 type)
{
 if (type & RPCAP_MSG_IS_REPLY) {
  type &= ~RPCAP_MSG_IS_REPLY;
  if (type >= NUM_REPLY_TYPES)
   return ((void*)0);
  return replies[type];
 } else {
  if (type >= NUM_REQ_TYPES)
   return ((void*)0);
  return requests[type];
 }
}
