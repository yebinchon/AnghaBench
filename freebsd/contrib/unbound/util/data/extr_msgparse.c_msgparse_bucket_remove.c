
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rrset_parse {int hash; struct rrset_parse* rrset_bucket_next; } ;
struct msg_parse {struct rrset_parse** hashtable; } ;


 int PARSE_TABLE_SIZE ;

void
msgparse_bucket_remove(struct msg_parse* msg, struct rrset_parse* rrset)
{
 struct rrset_parse** p;
 p = &msg->hashtable[ rrset->hash & (PARSE_TABLE_SIZE-1) ];
 while(*p) {
  if(*p == rrset) {
   *p = rrset->rrset_bucket_next;
   return;
  }
  p = &( (*p)->rrset_bucket_next );
 }
}
