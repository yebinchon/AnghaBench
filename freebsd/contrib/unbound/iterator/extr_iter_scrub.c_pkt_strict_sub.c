
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int sldns_buffer ;


 int LDNS_MAX_DOMAINLEN ;
 int dname_pkt_copy (int *,int *,int *) ;
 int dname_strict_subdomain_c (int *,int *) ;

__attribute__((used)) static int
pkt_strict_sub(sldns_buffer* pkt, uint8_t* sname, uint8_t* dr)
{
 uint8_t buf1[LDNS_MAX_DOMAINLEN+1];
 uint8_t buf2[LDNS_MAX_DOMAINLEN+1];

 dname_pkt_copy(pkt, buf1, sname);
 dname_pkt_copy(pkt, buf2, dr);
 return dname_strict_subdomain_c(buf1, buf2);
}
