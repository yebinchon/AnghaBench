
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct rrset_parse {size_t dname_len; int rr_count; int size; int outside_packet; int * ttl_data; struct rrset_parse* rr_first; struct rrset_parse* rrset_all_next; int rrset_class; int type; int * dname; int hash; int section; struct rrset_parse* rr_last; } ;
struct rr_parse {size_t dname_len; int rr_count; int size; int outside_packet; int * ttl_data; struct rr_parse* rr_first; struct rr_parse* rrset_all_next; int rrset_class; int type; int * dname; int hash; int section; struct rr_parse* rr_last; } ;
struct regional {int dummy; } ;
struct msg_parse {int an_rrsets; int rrset_count; struct rrset_parse* rrset_last; struct rrset_parse* rrset_first; } ;
typedef int sldns_buffer ;


 int LDNS_RR_TYPE_CNAME ;
 int dname_pkt_copy (int *,int *,int *) ;
 int memmove (int *,int *,size_t) ;
 int memset (struct rrset_parse*,int ,int) ;
 int pkt_hash_rrset (int *,int *,int ,int ,int ) ;
 scalar_t__ regional_alloc (struct regional*,int) ;
 int sldns_write_uint16 (int *,size_t) ;
 int sldns_write_uint32 (int *,int ) ;

__attribute__((used)) static struct rrset_parse*
synth_cname_rrset(uint8_t** sname, size_t* snamelen, uint8_t* alias,
 size_t aliaslen, struct regional* region, struct msg_parse* msg,
 struct rrset_parse* rrset, struct rrset_parse* prev,
 struct rrset_parse* nx, sldns_buffer* pkt)
{
 struct rrset_parse* cn = (struct rrset_parse*)regional_alloc(region,
  sizeof(struct rrset_parse));
 if(!cn)
  return ((void*)0);
 memset(cn, 0, sizeof(*cn));
 cn->rr_first = (struct rr_parse*)regional_alloc(region,
  sizeof(struct rr_parse));
 if(!cn->rr_first)
  return ((void*)0);
 cn->rr_last = cn->rr_first;

 cn->dname = (uint8_t*)regional_alloc(region, *snamelen);
 if(!cn->dname)
  return ((void*)0);
 dname_pkt_copy(pkt, cn->dname, *sname);
 cn->dname_len = *snamelen;
 cn->type = LDNS_RR_TYPE_CNAME;
 cn->section = rrset->section;
 cn->rrset_class = rrset->rrset_class;
 cn->rr_count = 1;
 cn->size = sizeof(uint16_t) + aliaslen;
 cn->hash=pkt_hash_rrset(pkt, cn->dname, cn->type, cn->rrset_class, 0);

 memset(cn->rr_first, 0, sizeof(struct rr_parse));
 cn->rr_first->outside_packet = 1;
 cn->rr_first->ttl_data = (uint8_t*)regional_alloc(region,
  sizeof(uint32_t)+sizeof(uint16_t)+aliaslen);
 if(!cn->rr_first->ttl_data)
  return ((void*)0);
 sldns_write_uint32(cn->rr_first->ttl_data, 0);
 sldns_write_uint16(cn->rr_first->ttl_data+4, aliaslen);
 memmove(cn->rr_first->ttl_data+6, alias, aliaslen);
 cn->rr_first->size = sizeof(uint16_t)+aliaslen;


 cn->rrset_all_next = nx;
 if(prev)
  prev->rrset_all_next = cn;
 else msg->rrset_first = cn;
 if(nx == ((void*)0))
  msg->rrset_last = cn;
 msg->rrset_count ++;
 msg->an_rrsets++;


 *sname = cn->rr_first->ttl_data + sizeof(uint32_t)+sizeof(uint16_t);
 *snamelen = aliaslen;
 return cn;
}
