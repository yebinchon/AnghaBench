
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int sldns_buffer ;


 int LDNS_MAX_DOMAINLEN ;
 int dname_pkt_copy (int *,int *,int *) ;
 int dname_subdomain_c (int *,int *) ;

__attribute__((used)) static int
pkt_sub(sldns_buffer* pkt, uint8_t* comprname, uint8_t* zone)
{
 uint8_t buf[LDNS_MAX_DOMAINLEN+1];
 dname_pkt_copy(pkt, buf, comprname);
 return dname_subdomain_c(buf, zone);
}
