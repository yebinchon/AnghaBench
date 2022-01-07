
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int rj_why; int rj_stat; } ;
struct TYPE_3__ {int rp_stat; } ;
struct rpc_msg {TYPE_2__ rjcted_rply; TYPE_1__ rm_reply; int rm_direction; } ;
typedef enum auth_stat { ____Placeholder_auth_stat } auth_stat ;
typedef int SVCXPRT ;


 int AUTH_ERROR ;
 int MSG_DENIED ;
 int REPLY ;
 int SVC_REPLY (int *,struct rpc_msg*) ;
 int assert (int ) ;

void
svcerr_auth(SVCXPRT *xprt, enum auth_stat why)
{
 struct rpc_msg rply;

 assert(xprt != ((void*)0));

 rply.rm_direction = REPLY;
 rply.rm_reply.rp_stat = MSG_DENIED;
 rply.rjcted_rply.rj_stat = AUTH_ERROR;
 rply.rjcted_rply.rj_why = why;
 SVC_REPLY(xprt, &rply);
}
