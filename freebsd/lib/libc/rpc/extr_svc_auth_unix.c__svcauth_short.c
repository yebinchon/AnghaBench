
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_req {int dummy; } ;
struct rpc_msg {int dummy; } ;
typedef enum auth_stat { ____Placeholder_auth_stat } auth_stat ;


 int AUTH_REJECTEDCRED ;

enum auth_stat
_svcauth_short(struct svc_req *rqst, struct rpc_msg *msg)
{
 return (AUTH_REJECTEDCRED);
}
