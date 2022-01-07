
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct reply_info {size_t an_numrrsets; TYPE_2__** rrsets; } ;
struct query_info {int * qname; int qname_len; } ;
struct TYPE_3__ {int dname; int type; } ;
struct TYPE_4__ {TYPE_1__ rk; } ;


 scalar_t__ LDNS_RR_TYPE_CNAME ;
 int get_cname_target (TYPE_2__*,int **,int *) ;
 scalar_t__ ntohs (int ) ;
 scalar_t__ query_dname_compare (int *,int ) ;

int
val_chase_cname(struct query_info* qchase, struct reply_info* rep,
 size_t* cname_skip) {
 size_t i;

 for(i = *cname_skip; i < rep->an_numrrsets; i++) {
  if(ntohs(rep->rrsets[i]->rk.type) == LDNS_RR_TYPE_CNAME &&
   query_dname_compare(qchase->qname, rep->rrsets[i]->
    rk.dname) == 0) {
   qchase->qname = ((void*)0);
   get_cname_target(rep->rrsets[i], &qchase->qname,
    &qchase->qname_len);
   if(!qchase->qname)
    return 0;
   (*cname_skip) = i+1;
   return 1;
  }
 }
 return 0;
}
