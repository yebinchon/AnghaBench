
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int sldns_buffer ;
typedef int hashvalue_type ;


 int dname_pkt_hash (int *,int *,int) ;

__attribute__((used)) static hashvalue_type
pkt_hash_rrset_first(sldns_buffer* pkt, uint8_t* dname)
{



 hashvalue_type h = 0xab;
 h = dname_pkt_hash(pkt, dname, h);
 return h;
}
