
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rrset_parse {scalar_t__ dname_len; int section; struct rrset_parse* rrset_all_next; int rrset_class; int type; int dname; } ;
struct msg_parse {int ar_rrsets; int ns_rrsets; int an_rrsets; int rrset_count; struct rrset_parse* rrset_last; struct rrset_parse* rrset_first; } ;
typedef int sldns_buffer ;


 scalar_t__ LDNS_MAX_DOMAINLEN ;



 scalar_t__ VERB_QUERY ;
 int dname_pkt_copy (int *,int *,int ) ;
 int log_assert (int ) ;
 int log_nametypeclass (scalar_t__,char const*,int *,int ,int ) ;
 int msgparse_bucket_remove (struct msg_parse*,struct rrset_parse*) ;
 int ntohs (int ) ;
 scalar_t__ verbosity ;

__attribute__((used)) static void
remove_rrset(const char* str, sldns_buffer* pkt, struct msg_parse* msg,
 struct rrset_parse* prev, struct rrset_parse** rrset)
{
 if(verbosity >= VERB_QUERY && str
  && (*rrset)->dname_len <= LDNS_MAX_DOMAINLEN) {
  uint8_t buf[LDNS_MAX_DOMAINLEN+1];
  dname_pkt_copy(pkt, buf, (*rrset)->dname);
  log_nametypeclass(VERB_QUERY, str, buf,
   (*rrset)->type, ntohs((*rrset)->rrset_class));
 }
 if(prev)
  prev->rrset_all_next = (*rrset)->rrset_all_next;
 else msg->rrset_first = (*rrset)->rrset_all_next;
 if(msg->rrset_last == *rrset)
  msg->rrset_last = prev;
 msg->rrset_count --;
 switch((*rrset)->section) {
  case 129: msg->an_rrsets--; break;
  case 128: msg->ns_rrsets--; break;
  case 130: msg->ar_rrsets--; break;
  default: log_assert(0);
 }
 msgparse_bucket_remove(msg, *rrset);
 *rrset = (*rrset)->rrset_all_next;
}
