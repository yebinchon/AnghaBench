
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct nbns_rr {int rr_type; int rr_class; int rr_rdlength; int * rr_data; int rr_ttl; int * rr_name; } ;
struct mbdata {int * mb_pos; } ;
struct nbns_rq {struct mbdata nr_rp; } ;


 int NBERROR (int ) ;
 int NBERR_INVALIDRESPONSE ;
 int bzero (struct nbns_rr*,int) ;
 int mb_get_mem (struct mbdata*,int *,int) ;
 int mb_get_uint16be (struct mbdata*,int*) ;
 int mb_get_uint32be (struct mbdata*,int *) ;
 int nb_encname_len (int *) ;

int
nbns_rq_getrr(struct nbns_rq *rqp, struct nbns_rr *rrp)
{
 struct mbdata *mbp = &rqp->nr_rp;
 u_char *cp;
 int error, len;

 bzero(rrp, sizeof(*rrp));
 cp = mbp->mb_pos;
 len = nb_encname_len(cp);
 if (len < 1)
  return NBERROR(NBERR_INVALIDRESPONSE);
 rrp->rr_name = cp;
 error = mb_get_mem(mbp, ((void*)0), len);
 if (error)
  return error;
 mb_get_uint16be(mbp, &rrp->rr_type);
 mb_get_uint16be(mbp, &rrp->rr_class);
 mb_get_uint32be(mbp, &rrp->rr_ttl);
 mb_get_uint16be(mbp, &rrp->rr_rdlength);
 rrp->rr_data = mbp->mb_pos;
 error = mb_get_mem(mbp, ((void*)0), rrp->rr_rdlength);
 return error;
}
