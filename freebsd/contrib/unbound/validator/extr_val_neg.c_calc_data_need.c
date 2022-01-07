
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct val_neg_data {int dummy; } ;
struct reply_info {size_t an_numrrsets; size_t ns_numrrsets; TYPE_2__** rrsets; } ;
struct TYPE_3__ {size_t dname_len; int * dname; int type; } ;
struct TYPE_4__ {TYPE_1__ rk; } ;


 scalar_t__ LDNS_RR_TYPE_NSEC ;
 int dname_is_root (int *) ;
 int dname_remove_label (int **,size_t*) ;
 int log_assert (int) ;
 scalar_t__ ntohs (int ) ;

__attribute__((used)) static size_t calc_data_need(struct reply_info* rep)
{
 uint8_t* d;
 size_t i, len, res = 0;

 for(i=rep->an_numrrsets; i<rep->an_numrrsets+rep->ns_numrrsets; i++) {
  if(ntohs(rep->rrsets[i]->rk.type) == LDNS_RR_TYPE_NSEC) {
   d = rep->rrsets[i]->rk.dname;
   len = rep->rrsets[i]->rk.dname_len;
   res = sizeof(struct val_neg_data) + len;
   while(!dname_is_root(d)) {
    log_assert(len > 1);
    dname_remove_label(&d, &len);
    res += sizeof(struct val_neg_data) + len;
   }
  }
 }
 return res;
}
