
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct query_info {int qclass; int qtype; int qname_len; int qname; } ;
struct auth_xfer {int dclass; int namelen; int name; } ;
typedef int sldns_buffer ;
typedef int qinfo ;


 int LDNS_RR_TYPE_SOA ;
 int memset (struct query_info*,int ,int) ;
 int qinfo_query_encode (int *,struct query_info*) ;
 int sldns_buffer_write_u16_at (int *,int ,int ) ;

__attribute__((used)) static void
xfr_create_soa_probe_packet(struct auth_xfer* xfr, sldns_buffer* buf,
 uint16_t id)
{
 struct query_info qinfo;

 memset(&qinfo, 0, sizeof(qinfo));
 qinfo.qname = xfr->name;
 qinfo.qname_len = xfr->namelen;
 qinfo.qtype = LDNS_RR_TYPE_SOA;
 qinfo.qclass = xfr->dclass;
 qinfo_query_encode(buf, &qinfo);
 sldns_buffer_write_u16_at(buf, 0, id);
}
