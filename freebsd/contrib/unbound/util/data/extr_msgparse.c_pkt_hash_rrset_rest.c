
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
typedef int type ;
typedef int hashvalue_type ;
typedef int dclass ;


 int hashlittle (int *,int,int ) ;

__attribute__((used)) static hashvalue_type
pkt_hash_rrset_rest(hashvalue_type dname_h, uint16_t type, uint16_t dclass,
 uint32_t rrset_flags)
{


 hashvalue_type h;
 h = hashlittle(&type, sizeof(type), dname_h);
 h = hashlittle(&dclass, sizeof(dclass), h);
 h = hashlittle(&rrset_flags, sizeof(uint32_t), h);
 return h;
}
