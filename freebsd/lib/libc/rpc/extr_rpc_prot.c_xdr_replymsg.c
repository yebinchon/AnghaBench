
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rp_stat; int ru; } ;
struct rpc_msg {int rm_direction; TYPE_1__ rm_reply; int rm_xid; } ;
typedef int enum_t ;
typedef enum reply_stat { ____Placeholder_reply_stat } reply_stat ;
typedef enum msg_type { ____Placeholder_msg_type } msg_type ;
typedef int caddr_t ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int NULL_xdrproc_t ;
 scalar_t__ REPLY ;
 int assert (int ) ;
 int reply_dscrm ;
 scalar_t__ xdr_enum (int *,int *) ;
 scalar_t__ xdr_u_int32_t (int *,int *) ;
 int xdr_union (int *,int *,int ,int ,int ) ;

bool_t
xdr_replymsg(XDR *xdrs, struct rpc_msg *rmsg)
{
 enum msg_type *prm_direction;
 enum reply_stat *prp_stat;

 assert(xdrs != ((void*)0));
 assert(rmsg != ((void*)0));

 prm_direction = &rmsg->rm_direction;
 prp_stat = &rmsg->rm_reply.rp_stat;

 if (
     xdr_u_int32_t(xdrs, &(rmsg->rm_xid)) &&
     xdr_enum(xdrs, (enum_t *) prm_direction) &&
     (rmsg->rm_direction == REPLY) )
  return (xdr_union(xdrs, (enum_t *) prp_stat,
     (caddr_t)(void *)&(rmsg->rm_reply.ru), reply_dscrm,
     NULL_xdrproc_t));
 return (FALSE);
}
