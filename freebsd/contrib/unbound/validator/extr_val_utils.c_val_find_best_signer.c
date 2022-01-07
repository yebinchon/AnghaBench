
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_1__ entry; } ;
struct query_info {int * qname; } ;
struct packed_rrset_data {size_t count; size_t rrsig_count; int* rr_len; int ** rr_data; } ;


 int dname_count_labels (int *) ;
 int dname_count_size_labels (int *,size_t*) ;
 int dname_lab_cmp (int *,int ,int *,int ,int*) ;
 scalar_t__ dname_subdomain_c (int *,int *) ;

__attribute__((used)) static void
val_find_best_signer(struct ub_packed_rrset_key* rrset,
 struct query_info* qinf, uint8_t** signer_name, size_t* signer_len,
 int* matchcount)
{
 struct packed_rrset_data* d = (struct packed_rrset_data*)
  rrset->entry.data;
 uint8_t* sign;
 size_t i;
 int m;
 for(i=d->count; i<d->count+d->rrsig_count; i++) {
  sign = d->rr_data[i]+2+18;




  if(d->rr_len[i] > 2+19 &&
   dname_subdomain_c(qinf->qname, sign)) {
   (void)dname_lab_cmp(qinf->qname,
    dname_count_labels(qinf->qname),
    sign, dname_count_labels(sign), &m);
   if(m > *matchcount) {
    *matchcount = m;
    *signer_name = sign;
    (void)dname_count_size_labels(*signer_name,
     signer_len);
   }
  }
 }
}
