
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int typestr ;
struct auth_chunk {int len; int data; } ;
typedef int sldns_buffer ;
typedef int buf ;


 int VERB_ALGO ;
 int dname_pkt_copy (int *,int *,int *) ;
 int dname_str (int *,char*) ;
 size_t pkt_dname_len (int *) ;
 int * sldns_buffer_begin (int *) ;
 int sldns_buffer_init_frm_data (int *,int ,int ) ;
 int sldns_buffer_set_position (int *,size_t) ;
 int sldns_wire2str_type_buf (int ,char*,int) ;
 int verbose (int ,char*,char const*,int,char*,char*) ;

__attribute__((used)) static void
log_rrlist_position(const char* label, struct auth_chunk* rr_chunk,
 uint8_t* rr_dname, uint16_t rr_type, size_t rr_counter)
{
 sldns_buffer pkt;
 size_t dlen;
 uint8_t buf[256];
 char str[256];
 char typestr[32];
 sldns_buffer_init_frm_data(&pkt, rr_chunk->data, rr_chunk->len);
 sldns_buffer_set_position(&pkt, (size_t)(rr_dname -
  sldns_buffer_begin(&pkt)));
 if((dlen=pkt_dname_len(&pkt)) == 0) return;
 if(dlen >= sizeof(buf)) return;
 dname_pkt_copy(&pkt, buf, rr_dname);
 dname_str(buf, str);
 (void)sldns_wire2str_type_buf(rr_type, typestr, sizeof(typestr));
 verbose(VERB_ALGO, "%s at[%d] %s %s", label, (int)rr_counter,
  str, typestr);
}
