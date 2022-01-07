
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct query_info {scalar_t__ qtype; int qclass; int qname_len; int qname; } ;
struct auth_xfer {int have_zone; int dclass; TYPE_1__* task_transfer; int namelen; int name; int serial; } ;
struct auth_master {int ixfr; } ;
typedef int sldns_buffer ;
typedef int qinfo ;
struct TYPE_2__ {int on_ixfr; scalar_t__ ixfr_fail; scalar_t__ on_ixfr_is_axfr; scalar_t__ incoming_xfr_serial; scalar_t__ rr_scan_num; scalar_t__ got_xfr_serial; } ;


 int LDNS_NSCOUNT_OFF ;
 scalar_t__ LDNS_RR_TYPE_AXFR ;
 scalar_t__ LDNS_RR_TYPE_IXFR ;
 int LDNS_RR_TYPE_SOA ;
 int memset (struct query_info*,int ,int) ;
 int qinfo_query_encode (int *,struct query_info*) ;
 int sldns_buffer_clear (int *) ;
 int sldns_buffer_flip (int *) ;
 size_t sldns_buffer_limit (int *) ;
 int sldns_buffer_set_position (int *,size_t) ;
 int sldns_buffer_write_u16 (int *,int) ;
 int sldns_buffer_write_u16_at (int *,int ,int) ;
 int sldns_buffer_write_u32 (int *,int ) ;
 int sldns_buffer_write_u8 (int *,int) ;

__attribute__((used)) static void
xfr_create_ixfr_packet(struct auth_xfer* xfr, sldns_buffer* buf, uint16_t id,
 struct auth_master* master)
{
 struct query_info qinfo;
 uint32_t serial;
 int have_zone;
 have_zone = xfr->have_zone;
 serial = xfr->serial;

 memset(&qinfo, 0, sizeof(qinfo));
 qinfo.qname = xfr->name;
 qinfo.qname_len = xfr->namelen;
 xfr->task_transfer->got_xfr_serial = 0;
 xfr->task_transfer->rr_scan_num = 0;
 xfr->task_transfer->incoming_xfr_serial = 0;
 xfr->task_transfer->on_ixfr_is_axfr = 0;
 xfr->task_transfer->on_ixfr = 1;
 qinfo.qtype = LDNS_RR_TYPE_IXFR;
 if(!have_zone || xfr->task_transfer->ixfr_fail || !master->ixfr) {
  qinfo.qtype = LDNS_RR_TYPE_AXFR;
  xfr->task_transfer->ixfr_fail = 0;
  xfr->task_transfer->on_ixfr = 0;
 }

 qinfo.qclass = xfr->dclass;
 qinfo_query_encode(buf, &qinfo);
 sldns_buffer_write_u16_at(buf, 0, id);


 if(qinfo.qtype == LDNS_RR_TYPE_IXFR) {
  size_t end = sldns_buffer_limit(buf);
  sldns_buffer_clear(buf);
  sldns_buffer_set_position(buf, end);

  sldns_buffer_write_u16_at(buf, LDNS_NSCOUNT_OFF, 1);

  sldns_buffer_write_u8(buf, 0xC0);
  sldns_buffer_write_u8(buf, 0x0C);
  sldns_buffer_write_u16(buf, LDNS_RR_TYPE_SOA);
  sldns_buffer_write_u16(buf, qinfo.qclass);
  sldns_buffer_write_u32(buf, 0);
  sldns_buffer_write_u16(buf, 22);
  sldns_buffer_write_u8(buf, 0);
  sldns_buffer_write_u8(buf, 0);
  sldns_buffer_write_u32(buf, serial);
  sldns_buffer_write_u32(buf, 0);
  sldns_buffer_write_u32(buf, 0);
  sldns_buffer_write_u32(buf, 0);
  sldns_buffer_write_u32(buf, 0);
  sldns_buffer_flip(buf);
 }
}
