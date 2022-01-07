
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int xdrproc_t ;
struct TYPE_7__ {int proc; void* where; } ;
struct TYPE_9__ {TYPE_1__ ar_results; int ar_stat; int ar_verf; } ;
struct TYPE_8__ {int rp_stat; } ;
struct rpc_msg {TYPE_3__ acpted_rply; TYPE_2__ rm_reply; int rm_direction; } ;
typedef int bool_t ;
struct TYPE_10__ {int xp_verf; } ;
typedef TYPE_4__ SVCXPRT ;


 int MSG_ACCEPTED ;
 int REPLY ;
 int SUCCESS ;
 int SVC_REPLY (TYPE_4__*,struct rpc_msg*) ;
 int assert (int ) ;

bool_t
svc_sendreply(SVCXPRT *xprt, xdrproc_t xdr_results,
    void * xdr_location)
{
 struct rpc_msg rply;

 assert(xprt != ((void*)0));

 rply.rm_direction = REPLY;
 rply.rm_reply.rp_stat = MSG_ACCEPTED;
 rply.acpted_rply.ar_verf = xprt->xp_verf;
 rply.acpted_rply.ar_stat = SUCCESS;
 rply.acpted_rply.ar_results.where = xdr_location;
 rply.acpted_rply.ar_results.proc = xdr_results;
 return (SVC_REPLY(xprt, &rply));
}
