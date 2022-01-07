
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef char uint8_t ;
typedef int uint16_t ;
struct query_info {char* qname; size_t qname_len; int qtype; int qclass; TYPE_3__* local_alias; } ;
typedef int sldns_buffer ;
struct TYPE_6__ {TYPE_2__* rrset; } ;
struct TYPE_4__ {char* dname; size_t dname_len; } ;
struct TYPE_5__ {TYPE_1__ rk; } ;


 int log_assert (int) ;
 int sldns_buffer_clear (int *) ;
 int sldns_buffer_flip (int *) ;
 int sldns_buffer_remaining (int *) ;
 int sldns_buffer_skip (int *,int) ;
 int sldns_buffer_write (int *,char const*,size_t) ;
 int sldns_buffer_write_u16 (int *,int) ;

void
qinfo_query_encode(sldns_buffer* pkt, struct query_info* qinfo)
{
 uint16_t flags = 0;
 const uint8_t* qname = qinfo->local_alias ?
  qinfo->local_alias->rrset->rk.dname : qinfo->qname;
 size_t qname_len = qinfo->local_alias ?
  qinfo->local_alias->rrset->rk.dname_len : qinfo->qname_len;
 sldns_buffer_clear(pkt);
 log_assert(sldns_buffer_remaining(pkt) >= 12+255+4 );
 sldns_buffer_skip(pkt, 2);
 sldns_buffer_write_u16(pkt, flags);
 sldns_buffer_write_u16(pkt, 1);
 sldns_buffer_write(pkt, "\000\000\000\000\000\000", 6);
 sldns_buffer_write(pkt, qname, qname_len);
 sldns_buffer_write_u16(pkt, qinfo->qtype);
 sldns_buffer_write_u16(pkt, qinfo->qclass);
 sldns_buffer_flip(pkt);
}
