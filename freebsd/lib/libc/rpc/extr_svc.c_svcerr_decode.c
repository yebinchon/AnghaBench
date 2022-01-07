
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int ar_stat; int ar_verf; } ;
struct TYPE_6__ {int rp_stat; } ;
struct rpc_msg {TYPE_2__ acpted_rply; TYPE_1__ rm_reply; int rm_direction; } ;
struct TYPE_8__ {int xp_verf; } ;
typedef TYPE_3__ SVCXPRT ;


 int GARBAGE_ARGS ;
 int MSG_ACCEPTED ;
 int REPLY ;
 int SVC_REPLY (TYPE_3__*,struct rpc_msg*) ;
 int assert (int ) ;

void
svcerr_decode(SVCXPRT *xprt)
{
 struct rpc_msg rply;

 assert(xprt != ((void*)0));

 rply.rm_direction = REPLY;
 rply.rm_reply.rp_stat = MSG_ACCEPTED;
 rply.acpted_rply.ar_verf = xprt->xp_verf;
 rply.acpted_rply.ar_stat = GARBAGE_ARGS;
 SVC_REPLY(xprt, &rply);
}
