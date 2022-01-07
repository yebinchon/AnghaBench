
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rrset_parse {size_t dname_len; } ;
typedef int sldns_buffer ;


 size_t LDNS_MAX_DOMAINLEN ;
 int dname_pkt_copy (int *,int *,int *) ;
 int log_assert (int) ;
 int parse_get_cname_target (struct rrset_parse*,int **,size_t*) ;

__attribute__((used)) static int
synth_cname(uint8_t* qname, size_t qnamelen, struct rrset_parse* dname_rrset,
 uint8_t* alias, size_t* aliaslen, sldns_buffer* pkt)
{

 uint8_t* dtarg = ((void*)0);
 size_t dtarglen;
 if(!parse_get_cname_target(dname_rrset, &dtarg, &dtarglen))
  return 0;
 log_assert(qnamelen > dname_rrset->dname_len);


 *aliaslen = qnamelen + dtarglen - dname_rrset->dname_len;
 if(*aliaslen > LDNS_MAX_DOMAINLEN)
  return 0;

 dname_pkt_copy(pkt, alias, qname);
 dname_pkt_copy(pkt, alias+(qnamelen-dname_rrset->dname_len), dtarg);
 return 1;
}
