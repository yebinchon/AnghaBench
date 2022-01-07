
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ub_packed_rrset_key {int dummy; } ;
struct query_info {int qname; } ;


 int * nsec_closest_encloser (int ,struct ub_packed_rrset_key*) ;
 scalar_t__ query_dname_compare (int *,int *) ;
 int val_nsec_proves_name_error (struct ub_packed_rrset_key*,int ) ;

int val_nsec_proves_positive_wildcard(struct ub_packed_rrset_key* nsec,
 struct query_info* qinf, uint8_t* wc)
{
 uint8_t* ce;



 if(!val_nsec_proves_name_error(nsec, qinf->qname))
  return 0;

 ce = nsec_closest_encloser(qinf->qname, nsec);
 if(!ce)
  return 0;
 if(query_dname_compare(wc, ce) != 0) {
  return 0;
 }
 return 1;
}
