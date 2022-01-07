
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct nbns_rq {int nr_opcode; scalar_t__ nr_trnid; struct nb_ctx* nr_nbd; int nr_rq; } ;
struct nb_ctx {int dummy; } ;


 int ENOMEM ;
 int NBDG_MAXSIZE ;
 int bzero (struct nbns_rq*,int) ;
 int free (struct nbns_rq*) ;
 struct nbns_rq* malloc (int) ;
 int mb_init (int *,int ) ;

int
nbns_rq_create(int opcode, struct nb_ctx *ctx, struct nbns_rq **rqpp)
{
 struct nbns_rq *rqp;
 static u_int16_t trnid;
 int error;

 rqp = malloc(sizeof(*rqp));
 if (rqp == ((void*)0))
  return ENOMEM;
 bzero(rqp, sizeof(*rqp));
 error = mb_init(&rqp->nr_rq, NBDG_MAXSIZE);
 if (error) {
  free(rqp);
  return error;
 }
 rqp->nr_opcode = opcode;
 rqp->nr_nbd = ctx;
 rqp->nr_trnid = trnid++;
 *rqpp = rqp;
 return 0;
}
