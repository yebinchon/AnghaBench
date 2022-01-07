
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct rrset_parse {int * dname; } ;
struct regional {int dummy; } ;
struct msg_parse {int dummy; } ;
typedef int sldns_pkt_section ;
typedef int sldns_buffer ;
typedef int hashvalue_type ;


 scalar_t__ LDNS_RR_TYPE_NSEC ;
 scalar_t__ LDNS_RR_TYPE_RRSIG ;
 scalar_t__ LDNS_RR_TYPE_SOA ;
 int PACKED_RRSET_NSEC_AT_APEX ;
 int PACKED_RRSET_SOA_NEG ;
 struct rrset_parse* change_rrsig_rrset (struct rrset_parse*,struct msg_parse*,int *,scalar_t__,int ,int,int ,struct regional*) ;
 struct rrset_parse* msgparse_hashtable_lookup (struct msg_parse*,int *,int ,int ,int *,size_t,scalar_t__,scalar_t__) ;
 int pkt_hash_rrset_first (int *,int *) ;
 int pkt_hash_rrset_rest (int ,scalar_t__,scalar_t__,int ) ;
 int pkt_rrset_flags (int *,scalar_t__,int ) ;
 scalar_t__ pkt_rrsig_covered (int *,int ,scalar_t__*) ;
 scalar_t__ pkt_rrsig_covered_equals (int *,int ,scalar_t__) ;
 scalar_t__ rrset_has_sigover (int *,struct rrset_parse*,scalar_t__,int*) ;
 int sldns_buffer_current (int *) ;
 scalar_t__ smart_compare (int *,int *,int *,int *) ;

__attribute__((used)) static int
find_rrset(struct msg_parse* msg, sldns_buffer* pkt, uint8_t* dname,
 size_t dnamelen, uint16_t type, uint16_t dclass, hashvalue_type* hash,
 uint32_t* rrset_flags,
 uint8_t** prev_dname_first, uint8_t** prev_dname_last,
 size_t* prev_dnamelen, uint16_t* prev_type,
 uint16_t* prev_dclass, struct rrset_parse** rrset_prev,
 sldns_pkt_section section, struct regional* region)
{
 hashvalue_type dname_h = pkt_hash_rrset_first(pkt, dname);
 uint16_t covtype;
 if(*rrset_prev) {

  if(type == *prev_type && dclass == *prev_dclass &&
   dnamelen == *prev_dnamelen &&
   smart_compare(pkt, dname, *prev_dname_first,
    *prev_dname_last) == 0 &&
   type != LDNS_RR_TYPE_RRSIG) {

   *prev_dname_last = dname;
   return 1;
  }

  if(type == LDNS_RR_TYPE_RRSIG && dclass == *prev_dclass &&
   pkt_rrsig_covered_equals(pkt, sldns_buffer_current(pkt),
    *prev_type) &&
   smart_compare(pkt, dname, *prev_dname_first,
    *prev_dname_last) == 0) {

   *prev_dname_last = dname;
   return 1;
  }
 }

 *rrset_flags = pkt_rrset_flags(pkt, type, section);


 if(type == LDNS_RR_TYPE_RRSIG && pkt_rrsig_covered(pkt,
  sldns_buffer_current(pkt), &covtype)) {
  *hash = pkt_hash_rrset_rest(dname_h, covtype, dclass,
   *rrset_flags);
  *rrset_prev = msgparse_hashtable_lookup(msg, pkt, *hash,
   *rrset_flags, dname, dnamelen, covtype, dclass);
  if(!*rrset_prev && covtype == LDNS_RR_TYPE_NSEC) {

   *rrset_flags ^= PACKED_RRSET_NSEC_AT_APEX;
   *hash = pkt_hash_rrset_rest(dname_h, covtype, dclass,
    *rrset_flags);
   *rrset_prev = msgparse_hashtable_lookup(msg, pkt,
    *hash, *rrset_flags, dname, dnamelen, covtype,
    dclass);
   if(!*rrset_prev)
    *rrset_flags ^= PACKED_RRSET_NSEC_AT_APEX;
  }
  if(!*rrset_prev && covtype == LDNS_RR_TYPE_SOA) {

   *rrset_flags ^= PACKED_RRSET_SOA_NEG;
   *hash = pkt_hash_rrset_rest(dname_h, covtype, dclass,
    *rrset_flags);
   *rrset_prev = msgparse_hashtable_lookup(msg, pkt,
    *hash, *rrset_flags, dname, dnamelen, covtype,
    dclass);
   if(!*rrset_prev)
    *rrset_flags ^= PACKED_RRSET_SOA_NEG;
  }
  if(*rrset_prev) {
   *prev_dname_first = (*rrset_prev)->dname;
   *prev_dname_last = dname;
   *prev_dnamelen = dnamelen;
   *prev_type = covtype;
   *prev_dclass = dclass;
   return 1;
  }
 }
 if(type != LDNS_RR_TYPE_RRSIG) {
  int hasother = 0;

  *hash = pkt_hash_rrset_rest(dname_h, LDNS_RR_TYPE_RRSIG,
   dclass, 0);
  *rrset_prev = msgparse_hashtable_lookup(msg, pkt, *hash,
   0, dname, dnamelen, LDNS_RR_TYPE_RRSIG,
   dclass);
  if(*rrset_prev && rrset_has_sigover(pkt, *rrset_prev, type,
   &hasother)) {

   *prev_dname_first = (*rrset_prev)->dname;
   *prev_dname_last = dname;
   *prev_dnamelen = dnamelen;
   *prev_type = type;
   *prev_dclass = dclass;
   *rrset_prev = change_rrsig_rrset(*rrset_prev, msg,
    pkt, type, *rrset_flags, hasother, section,
    region);
   if(!*rrset_prev) return 0;
   return 1;
  }
 }

 *hash = pkt_hash_rrset_rest(dname_h, type, dclass, *rrset_flags);
 *rrset_prev = msgparse_hashtable_lookup(msg, pkt, *hash, *rrset_flags,
  dname, dnamelen, type, dclass);
 if(*rrset_prev)
  *prev_dname_first = (*rrset_prev)->dname;
 else *prev_dname_first = dname;
 *prev_dname_last = dname;
 *prev_dnamelen = dnamelen;
 *prev_type = type;
 *prev_dclass = dclass;
 return 1;
}
