
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_char ;
struct TYPE_3__ {scalar_t__ s_addr; } ;
struct TYPE_4__ {TYPE_1__ sin_addr; } ;
struct mbdata {int mb_top; } ;
struct nbns_rq {int nr_nmflags; int nr_trnid; int nr_opcode; int nr_qdcount; int nr_ancount; int nr_nscount; int nr_arcount; int nr_qdtype; int nr_qdclass; int nr_qdname; TYPE_2__ nr_dest; int nr_rp; struct mbdata nr_rq; struct nb_ctx* nr_nbd; } ;
struct nb_ctx {int nb_timo; } ;


 int EINVAL ;
 scalar_t__ INADDR_BROADCAST ;
 int NBDG_MAXSIZE ;
 int NBNS_NMFLAG_BCAST ;
 int m_lineup (int ,int *) ;
 int mb_fit (struct mbdata*,int,char**) ;
 int mb_init (int *,int ) ;
 int mb_put_uint16be (struct mbdata*,int) ;
 int mb_put_uint8 (struct mbdata*,int) ;
 int nb_enum_if (int **,int) ;
 int * nb_iflist ;
 int nb_name_encode (int ,int *) ;
 int nb_name_len (int ) ;

int
nbns_rq_prepare(struct nbns_rq *rqp)
{
 struct nb_ctx *ctx = rqp->nr_nbd;
 struct mbdata *mbp = &rqp->nr_rq;
 u_int8_t nmflags;
 u_char *cp;
 int len, error;

 error = mb_init(&rqp->nr_rp, NBDG_MAXSIZE);
 if (error)
  return error;
 if (rqp->nr_dest.sin_addr.s_addr == INADDR_BROADCAST) {
  rqp->nr_nmflags |= NBNS_NMFLAG_BCAST;
  if (nb_iflist == ((void*)0)) {
   error = nb_enum_if(&nb_iflist, 100);
   if (error)
    return error;
  }
 } else
  rqp->nr_nmflags &= ~NBNS_NMFLAG_BCAST;
 mb_put_uint16be(mbp, rqp->nr_trnid);
 nmflags = ((rqp->nr_opcode & 0x1F) << 3) | ((rqp->nr_nmflags & 0x70) >> 4);
 mb_put_uint8(mbp, nmflags);
 mb_put_uint8(mbp, (rqp->nr_nmflags & 0x0f) << 4 );
 mb_put_uint16be(mbp, rqp->nr_qdcount);
 mb_put_uint16be(mbp, rqp->nr_ancount);
 mb_put_uint16be(mbp, rqp->nr_nscount);
 mb_put_uint16be(mbp, rqp->nr_arcount);
 if (rqp->nr_qdcount) {
  if (rqp->nr_qdcount > 1)
   return EINVAL;
  len = nb_name_len(rqp->nr_qdname);
  error = mb_fit(mbp, len, (char**)&cp);
  if (error)
   return error;
  nb_name_encode(rqp->nr_qdname, cp);
  mb_put_uint16be(mbp, rqp->nr_qdtype);
  mb_put_uint16be(mbp, rqp->nr_qdclass);
 }
 m_lineup(mbp->mb_top, &mbp->mb_top);
 if (ctx->nb_timo == 0)
  ctx->nb_timo = 1;
 return 0;
}
