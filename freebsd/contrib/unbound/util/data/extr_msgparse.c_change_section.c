
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rrset_parse {int section; struct rrset_parse* rrset_all_next; } ;
struct msg_parse {int ar_rrsets; int ns_rrsets; struct rrset_parse* rrset_last; struct rrset_parse* rrset_first; int an_rrsets; } ;
typedef int sldns_pkt_section ;





 int log_assert (int ) ;

__attribute__((used)) static void
change_section(struct msg_parse* msg, struct rrset_parse* rrset,
 sldns_pkt_section section)
{
 struct rrset_parse *p, *prev;

 if(section == rrset->section)
  return;
 p = msg->rrset_first;
 prev = 0;
 while(p) {
  if(p == rrset) {
   if(prev) prev->rrset_all_next = p->rrset_all_next;
   else msg->rrset_first = p->rrset_all_next;
   if(msg->rrset_last == rrset)
    msg->rrset_last = prev;
   break;
  }
  prev = p;
  p = p->rrset_all_next;
 }

 switch(rrset->section) {
  case 129: msg->an_rrsets--; break;
  case 128: msg->ns_rrsets--; break;
  case 130: msg->ar_rrsets--; break;
  default: log_assert(0);
 }

 rrset->rrset_all_next = 0;
 if(msg->rrset_last)
  msg->rrset_last->rrset_all_next = rrset;
 else msg->rrset_first = rrset;
 msg->rrset_last = rrset;

 switch(section) {
  case 128: msg->ns_rrsets++; break;
  case 130: msg->ar_rrsets++; break;
  default: log_assert(0);
 }
 rrset->section = section;
}
