
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct val_anchors {int dummy; } ;
struct trust_anchor {int dummy; } ;
struct autr_ta {int dummy; } ;
typedef int rr ;


 int LDNS_RR_BUF_SIZE ;
 scalar_t__ LDNS_RR_TYPE_DNSKEY ;
 scalar_t__ LDNS_RR_TYPE_DS ;
 int LDNS_WIREPARSE_OFFSET (int) ;
 struct autr_ta* add_trustanchor_frm_rr (struct val_anchors*,int *,size_t,size_t,struct trust_anchor**) ;
 int free (int *) ;
 int log_err (char*,...) ;
 int * memdup (int *,size_t) ;
 int sldns_get_errorstr_parse (int) ;
 int sldns_str2wire_rr_buf (char*,int *,size_t*,size_t*,int ,int *,size_t,int *,size_t) ;
 scalar_t__ sldns_wirerr_get_type (int *,size_t,size_t) ;
 int str_contains_data (char*,char) ;

__attribute__((used)) static struct autr_ta*
add_trustanchor_frm_str(struct val_anchors* anchors, char* str,
 struct trust_anchor** tp, uint8_t* origin, size_t origin_len,
 uint8_t** prev, size_t* prev_len, int* skip)
{
 uint8_t rr[LDNS_RR_BUF_SIZE];
 size_t rr_len = sizeof(rr), dname_len;
 uint8_t* drr;
 int lstatus;
        if (!str_contains_data(str, ';')) {
  *skip = 1;
                return ((void*)0);
 }
 if(0 != (lstatus = sldns_str2wire_rr_buf(str, rr, &rr_len, &dname_len,
  0, origin, origin_len, *prev, *prev_len)))
 {
  log_err("ldns error while converting string to RR at%d: %s: %s",
   LDNS_WIREPARSE_OFFSET(lstatus),
   sldns_get_errorstr_parse(lstatus), str);
  return ((void*)0);
 }
 free(*prev);
 *prev = memdup(rr, dname_len);
 *prev_len = dname_len;
 if(!*prev) {
  log_err("malloc failure in add_trustanchor");
  return ((void*)0);
 }
 if(sldns_wirerr_get_type(rr, rr_len, dname_len)!=LDNS_RR_TYPE_DNSKEY &&
  sldns_wirerr_get_type(rr, rr_len, dname_len)!=LDNS_RR_TYPE_DS) {
  *skip = 1;
  return ((void*)0);
 }
 drr = memdup(rr, rr_len);
 if(!drr) {
  log_err("malloc failure in add trustanchor");
  return ((void*)0);
 }
 return add_trustanchor_frm_rr(anchors, drr, rr_len, dname_len, tp);
}
