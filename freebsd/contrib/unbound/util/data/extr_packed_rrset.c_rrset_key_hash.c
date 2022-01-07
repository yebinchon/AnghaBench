
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
typedef int t ;
struct packed_rrset_key {int flags; int rrset_class; int dname; int type; } ;
typedef int hashvalue_type ;


 int dname_query_hash (int ,int) ;
 int hashlittle (int *,int,int) ;
 int ntohs (int ) ;

hashvalue_type
rrset_key_hash(struct packed_rrset_key* key)
{

 uint16_t t = ntohs(key->type);


 hashvalue_type h = 0xab;
 h = dname_query_hash(key->dname, h);
 h = hashlittle(&t, sizeof(t), h);
 h = hashlittle(&key->rrset_class, sizeof(uint16_t), h);
 h = hashlittle(&key->flags, sizeof(uint32_t), h);
 return h;
}
