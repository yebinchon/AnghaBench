
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct sockaddr_storage {int dummy; } ;
struct rrset_parse {scalar_t__ dname_len; scalar_t__ rr_count; int size; struct rr_parse* rr_last; int rr_first; int dname; } ;
struct rr_parse {scalar_t__ size; int next; } ;
typedef int socklen_t ;
typedef int sldns_buffer ;


 scalar_t__ LDNS_MAX_DOMAINLEN ;
 scalar_t__ VERB_QUERY ;
 int dname_pkt_copy (int *,int *,int ) ;
 int log_name_addr (scalar_t__,char const*,int *,struct sockaddr_storage*,int ) ;
 scalar_t__ verbosity ;

__attribute__((used)) static int
remove_rr(const char* str, sldns_buffer* pkt, struct rrset_parse* rrset,
 struct rr_parse* prev, struct rr_parse** rr, struct sockaddr_storage* addr, socklen_t addrlen)
{
 if(verbosity >= VERB_QUERY && rrset->dname_len <= LDNS_MAX_DOMAINLEN && str) {
  uint8_t buf[LDNS_MAX_DOMAINLEN+1];
  dname_pkt_copy(pkt, buf, rrset->dname);
  log_name_addr(VERB_QUERY, str, buf, addr, addrlen);
 }
 if(prev)
  prev->next = (*rr)->next;
 else rrset->rr_first = (*rr)->next;
 if(rrset->rr_last == *rr)
  rrset->rr_last = prev;
 rrset->rr_count --;
 rrset->size -= (*rr)->size;


 return rrset->rr_count == 0;
}
