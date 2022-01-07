
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct reply_info {size_t an_numrrsets; TYPE_2__** rrsets; } ;
struct query_info {size_t qname_len; int * qname; } ;
struct TYPE_3__ {int dname; int type; } ;
struct TYPE_4__ {TYPE_1__ rk; } ;


 scalar_t__ LDNS_RR_TYPE_CNAME ;
 scalar_t__ LDNS_RR_TYPE_DNAME ;
 int get_cname_target (TYPE_2__*,int **,size_t*) ;
 scalar_t__ ntohs (int ) ;
 scalar_t__ query_dname_compare (int *,int ) ;

int
reply_check_cname_chain(struct query_info* qinfo, struct reply_info* rep)
{


 size_t i;
 uint8_t* sname = qinfo->qname;
 size_t snamelen = qinfo->qname_len;
 for(i=0; i<rep->an_numrrsets; i++) {
  uint16_t t = ntohs(rep->rrsets[i]->rk.type);
  if(t == LDNS_RR_TYPE_DNAME)
   continue;

  if(query_dname_compare(sname, rep->rrsets[i]->rk.dname) != 0){

   return 0;
  }

  if(t == LDNS_RR_TYPE_CNAME) {
   get_cname_target(rep->rrsets[i], &sname, &snamelen);
  }
 }
 return 1;
}
