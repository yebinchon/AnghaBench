
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* u_int32_t ;
struct TYPE_7__ {void* high; void* low; } ;
struct TYPE_9__ {TYPE_1__ ar_vers; int ar_stat; int ar_verf; } ;
struct TYPE_8__ {int rp_stat; } ;
struct rpc_msg {TYPE_3__ acpted_rply; TYPE_2__ rm_reply; int rm_direction; } ;
typedef scalar_t__ rpcvers_t ;
struct TYPE_10__ {int xp_verf; } ;
typedef TYPE_4__ SVCXPRT ;


 int MSG_ACCEPTED ;
 int PROG_MISMATCH ;
 int REPLY ;
 int SVC_REPLY (TYPE_4__*,struct rpc_msg*) ;
 int assert (int ) ;

void
svcerr_progvers(SVCXPRT *xprt, rpcvers_t low_vers, rpcvers_t high_vers)
{
 struct rpc_msg rply;

 assert(xprt != ((void*)0));

 rply.rm_direction = REPLY;
 rply.rm_reply.rp_stat = MSG_ACCEPTED;
 rply.acpted_rply.ar_verf = xprt->xp_verf;
 rply.acpted_rply.ar_stat = PROG_MISMATCH;
 rply.acpted_rply.ar_vers.low = (u_int32_t)low_vers;
 rply.acpted_rply.ar_vers.high = (u_int32_t)high_vers;
 SVC_REPLY(xprt, &rply);
}
