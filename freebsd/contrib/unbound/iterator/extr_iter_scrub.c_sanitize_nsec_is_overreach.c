
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rrset_parse {scalar_t__ type; struct rr_parse* rr_first; } ;
struct rr_parse {int * ttl_data; struct rr_parse* next; } ;


 scalar_t__ LDNS_RR_TYPE_NSEC ;
 int dname_subdomain_c (int *,int *) ;
 int dname_valid (int *,size_t) ;
 int log_assert (int) ;
 size_t sldns_read_uint16 (int *) ;

__attribute__((used)) static int sanitize_nsec_is_overreach(struct rrset_parse* rrset,
 uint8_t* zonename)
{
 struct rr_parse* rr;
 uint8_t* rhs;
 size_t len;
 log_assert(rrset->type == LDNS_RR_TYPE_NSEC);
 for(rr = rrset->rr_first; rr; rr = rr->next) {
  rhs = rr->ttl_data+4+2;
  len = sldns_read_uint16(rr->ttl_data+4);
  if(!dname_valid(rhs, len)) {

   return 1;
  }
  if(!dname_subdomain_c(rhs, zonename)) {

   return 1;
  }
 }

 return 0;
}
