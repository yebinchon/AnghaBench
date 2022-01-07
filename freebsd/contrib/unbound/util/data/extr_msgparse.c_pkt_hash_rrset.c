
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int type ;
typedef int sldns_buffer ;
typedef int hashvalue_type ;
typedef int dclass ;


 int dname_pkt_hash (int *,int *,int) ;
 int hashlittle (int *,int,int) ;

hashvalue_type
pkt_hash_rrset(sldns_buffer* pkt, uint8_t* dname, uint16_t type,
 uint16_t dclass, uint32_t rrset_flags)
{


 hashvalue_type h = 0xab;
 h = dname_pkt_hash(pkt, dname, h);
 h = hashlittle(&type, sizeof(type), h);
 h = hashlittle(&dclass, sizeof(dclass), h);
 h = hashlittle(&rrset_flags, sizeof(uint32_t), h);
 return h;
}
