
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct val_anchors {int dummy; } ;
struct trust_anchor {int dummy; } ;
typedef int sldns_buffer ;


 int LDNS_WIREPARSE_OFFSET (int) ;
 struct trust_anchor* anchor_store_new_rr (struct val_anchors*,int *,size_t,size_t) ;
 int log_err (char*,...) ;
 int * sldns_buffer_begin (int *) ;
 size_t sldns_buffer_capacity (int *) ;
 int sldns_get_errorstr_parse (int) ;
 int sldns_str2wire_rr_buf (char const*,int *,size_t*,size_t*,int ,int *,int ,int *,int ) ;

struct trust_anchor*
anchor_store_str(struct val_anchors* anchors, sldns_buffer* buffer,
 const char* str)
{
 struct trust_anchor* ta;
 uint8_t* rr = sldns_buffer_begin(buffer);
 size_t len = sldns_buffer_capacity(buffer), dname_len = 0;
 int status = sldns_str2wire_rr_buf(str, rr, &len, &dname_len,
  0, ((void*)0), 0, ((void*)0), 0);
 if(status != 0) {
  log_err("error parsing trust anchor %s: at %d: %s",
   str, LDNS_WIREPARSE_OFFSET(status),
   sldns_get_errorstr_parse(status));
  return ((void*)0);
 }
 if(!(ta=anchor_store_new_rr(anchors, rr, len, dname_len))) {
  log_err("out of memory");
  return ((void*)0);
 }
 return ta;
}
