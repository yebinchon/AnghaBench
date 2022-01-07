
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;


 scalar_t__ SSH_AGENT_SUCCESS ;
 int SSH_ERR_AGENT_FAILURE ;
 int SSH_ERR_INVALID_FORMAT ;
 scalar_t__ agent_failed (scalar_t__) ;

__attribute__((used)) static int
decode_reply(u_char type)
{
 if (agent_failed(type))
  return SSH_ERR_AGENT_FAILURE;
 else if (type == SSH_AGENT_SUCCESS)
  return 0;
 else
  return SSH_ERR_INVALID_FORMAT;
}
