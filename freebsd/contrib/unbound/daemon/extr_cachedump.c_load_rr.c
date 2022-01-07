
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ time_t ;
struct TYPE_2__ {size_t dname_len; scalar_t__ dname; void* rrset_class; void* type; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
struct regional {int dummy; } ;
struct packed_rrset_data {size_t* rr_len; int ** rr_data; scalar_t__* rr_ttl; } ;
typedef int sldns_buffer ;
typedef int rr ;
typedef int RES ;


 int LDNS_RR_BUF_SIZE ;
 scalar_t__ LDNS_RR_TYPE_RRSIG ;
 void* htons (scalar_t__) ;
 int log_warn (char*,...) ;
 scalar_t__ regional_alloc_init (struct regional*,int *,size_t) ;
 scalar_t__ sldns_buffer_begin (int *) ;
 int sldns_buffer_clear (int *) ;
 int sldns_get_errorstr_parse (int) ;
 int sldns_str2wire_rr_buf (char*,int *,size_t*,size_t*,int,int *,int ,int *,int ) ;
 scalar_t__ sldns_wirerr_get_class (int *,size_t,size_t) ;
 size_t sldns_wirerr_get_rdatalen (int *,size_t,size_t) ;
 int * sldns_wirerr_get_rdatawl (int *,size_t,size_t) ;
 scalar_t__ sldns_wirerr_get_ttl (int *,size_t,size_t) ;
 scalar_t__ sldns_wirerr_get_type (int *,size_t,size_t) ;
 int ssl_read_buf (int *,int *) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int
load_rr(RES* ssl, sldns_buffer* buf, struct regional* region,
 struct ub_packed_rrset_key* rk, struct packed_rrset_data* d,
 unsigned int i, int is_rrsig, int* go_on, time_t now)
{
 uint8_t rr[LDNS_RR_BUF_SIZE];
 size_t rr_len = sizeof(rr), dname_len = 0;
 int status;


 if(!ssl_read_buf(ssl, buf))
  return 0;
 if(strncmp((char*)sldns_buffer_begin(buf), "BADRR\n", 6) == 0) {
  *go_on = 0;
  return 1;
 }
 status = sldns_str2wire_rr_buf((char*)sldns_buffer_begin(buf), rr,
  &rr_len, &dname_len, 3600, ((void*)0), 0, ((void*)0), 0);
 if(status != 0) {
  log_warn("error cannot parse rr: %s: %s",
   sldns_get_errorstr_parse(status),
   (char*)sldns_buffer_begin(buf));
  return 0;
 }
 if(is_rrsig && sldns_wirerr_get_type(rr, rr_len, dname_len)
  != LDNS_RR_TYPE_RRSIG) {
  log_warn("error expected rrsig but got %s",
   (char*)sldns_buffer_begin(buf));
  return 0;
 }


 d->rr_ttl[i] = (time_t)sldns_wirerr_get_ttl(rr, rr_len, dname_len) + now;
 sldns_buffer_clear(buf);
 d->rr_len[i] = sldns_wirerr_get_rdatalen(rr, rr_len, dname_len)+2;
 d->rr_data[i] = (uint8_t*)regional_alloc_init(region,
  sldns_wirerr_get_rdatawl(rr, rr_len, dname_len), d->rr_len[i]);
 if(!d->rr_data[i]) {
  log_warn("error out of memory");
  return 0;
 }


 if(i==0) {
  rk->rk.type = htons(sldns_wirerr_get_type(rr, rr_len, dname_len));
  rk->rk.rrset_class = htons(sldns_wirerr_get_class(rr, rr_len, dname_len));
  rk->rk.dname_len = dname_len;
  rk->rk.dname = regional_alloc_init(region, rr, dname_len);
  if(!rk->rk.dname) {
   log_warn("error out of memory");
   return 0;
  }
 }

 return 1;
}
