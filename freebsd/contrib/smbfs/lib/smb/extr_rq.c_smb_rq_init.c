
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct smb_rq {int rq_rp; int rq_rq; struct smb_ctx* rq_ctx; int rq_cmd; } ;
struct smb_ctx {int dummy; } ;


 int ENOMEM ;
 size_t M_MINSIZE ;
 int bzero (struct smb_rq*,int) ;
 struct smb_rq* malloc (int) ;
 int mb_init (int *,size_t) ;

int
smb_rq_init(struct smb_ctx *ctx, u_char cmd, size_t rpbufsz, struct smb_rq **rqpp)
{
 struct smb_rq *rqp;

 rqp = malloc(sizeof(*rqp));
 if (rqp == ((void*)0))
  return ENOMEM;
 bzero(rqp, sizeof(*rqp));
 rqp->rq_cmd = cmd;
 rqp->rq_ctx = ctx;
 mb_init(&rqp->rq_rq, M_MINSIZE);
 mb_init(&rqp->rq_rp, rpbufsz);
 *rqpp = rqp;
 return 0;
}
