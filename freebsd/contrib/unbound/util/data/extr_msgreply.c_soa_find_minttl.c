
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int time_t ;
struct rr_parse {scalar_t__ ttl_data; } ;


 int sldns_read_uint16 (scalar_t__) ;
 int sldns_read_uint32 (scalar_t__) ;

__attribute__((used)) static time_t
soa_find_minttl(struct rr_parse* rr)
{
 uint16_t rlen = sldns_read_uint16(rr->ttl_data+4);
 if(rlen < 20)
  return 0;


 return (time_t)sldns_read_uint32(rr->ttl_data+6+rlen-4);
}
