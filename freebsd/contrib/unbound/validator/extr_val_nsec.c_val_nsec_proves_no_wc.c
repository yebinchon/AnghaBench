
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ub_packed_rrset_key {int dummy; } ;


 int LDNS_MAX_DOMAINLEN ;
 int dname_count_labels (int*) ;
 int dname_remove_labels (int**,size_t*,int) ;
 int memmove (int*,int*,size_t) ;
 int* nsec_closest_encloser (int*,struct ub_packed_rrset_key*) ;
 scalar_t__ val_nsec_proves_name_error (struct ub_packed_rrset_key*,int*) ;

int
val_nsec_proves_no_wc(struct ub_packed_rrset_key* nsec, uint8_t* qname,
 size_t qnamelen)
{


 int labs;
 uint8_t* ce = nsec_closest_encloser(qname, nsec);
 uint8_t* strip;
 size_t striplen;
 uint8_t buf[LDNS_MAX_DOMAINLEN+3];
 if(!ce)
  return 0;




 labs = dname_count_labels(qname) - dname_count_labels(ce);

 if(labs > 0) {

  strip = qname;
  striplen = qnamelen;
  dname_remove_labels(&strip, &striplen, labs);
  if(striplen > LDNS_MAX_DOMAINLEN-2)
   return 0;
  buf[0] = 1;
  buf[1] = (uint8_t)'*';
  memmove(buf+2, strip, striplen);
  if(val_nsec_proves_name_error(nsec, buf)) {
   return 1;
  }
 }
 return 0;
}
