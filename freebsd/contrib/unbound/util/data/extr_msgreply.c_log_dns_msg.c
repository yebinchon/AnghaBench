
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reply_info {int flags; } ;
struct regional {int dummy; } ;
struct query_info {int dummy; } ;
typedef int sldns_buffer ;


 int free (char*) ;
 int log_info (char*,char const*,...) ;
 struct regional* regional_create () ;
 int regional_destroy (struct regional*) ;
 int reply_info_encode (struct query_info*,struct reply_info*,int ,int ,int *,int ,struct regional*,int,int) ;
 int sldns_buffer_begin (int *) ;
 int sldns_buffer_free (int *) ;
 int sldns_buffer_limit (int *) ;
 int * sldns_buffer_new (int) ;
 char* sldns_wire2str_pkt (int ,int ) ;

void
log_dns_msg(const char* str, struct query_info* qinfo, struct reply_info* rep)
{

 sldns_buffer* buf = sldns_buffer_new(65535);
 struct regional* region = regional_create();
 if(!reply_info_encode(qinfo, rep, 0, rep->flags, buf, 0,
  region, 65535, 1)) {
  log_info("%s: log_dns_msg: out of memory", str);
 } else {
  char* s = sldns_wire2str_pkt(sldns_buffer_begin(buf),
   sldns_buffer_limit(buf));
  if(!s) {
   log_info("%s: log_dns_msg: ldns tostr failed", str);
  } else {
   log_info("%s %s", str, s);
  }
  free(s);
 }
 sldns_buffer_free(buf);
 regional_destroy(region);
}
