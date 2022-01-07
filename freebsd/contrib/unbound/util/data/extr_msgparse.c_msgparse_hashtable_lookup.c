
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct rrset_parse {struct rrset_parse* rrset_bucket_next; } ;
struct msg_parse {struct rrset_parse** hashtable; } ;
typedef int sldns_buffer ;
typedef int hashvalue_type ;


 int PARSE_TABLE_SIZE ;
 scalar_t__ rrset_parse_equals (struct rrset_parse*,int *,int,int ,int *,size_t,int ,int ) ;

struct rrset_parse*
msgparse_hashtable_lookup(struct msg_parse* msg, sldns_buffer* pkt,
 hashvalue_type h, uint32_t rrset_flags, uint8_t* dname,
 size_t dnamelen, uint16_t type, uint16_t dclass)
{
 struct rrset_parse* p = msg->hashtable[h & (PARSE_TABLE_SIZE-1)];
 while(p) {
  if(rrset_parse_equals(p, pkt, h, rrset_flags, dname, dnamelen,
   type, dclass))
   return p;
  p = p->rrset_bucket_next;
 }
 return ((void*)0);
}
