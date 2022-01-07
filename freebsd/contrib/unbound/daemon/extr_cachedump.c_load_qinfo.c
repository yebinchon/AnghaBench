
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct regional {int dummy; } ;
struct query_info {size_t qname_len; int * qname; int * local_alias; int qclass; int qtype; } ;
typedef int rr ;


 int LDNS_RR_BUF_SIZE ;
 int log_warn (char*,...) ;
 scalar_t__ regional_alloc_init (struct regional*,int *,size_t) ;
 int sldns_get_errorstr_parse (int) ;
 int sldns_str2wire_rr_question_buf (char*,int *,size_t*,size_t*,int *,int ,int *,int ) ;
 int sldns_wirerr_get_class (int *,size_t,size_t) ;
 int sldns_wirerr_get_type (int *,size_t,size_t) ;
 char* strchr (char*,char) ;

__attribute__((used)) static char*
load_qinfo(char* str, struct query_info* qinfo, struct regional* region)
{

 char* s = str;
 uint8_t rr[LDNS_RR_BUF_SIZE];
 size_t rr_len = sizeof(rr), dname_len = 0;
 int status;


 s = strchr(str, ' ');
 if(s) s = strchr(s+1, ' ');
 if(s) s = strchr(s+1, ' ');
 if(!s) {
  log_warn("error line too short, %s", str);
  return ((void*)0);
 }
 s[0] = 0;
 s++;


 status = sldns_str2wire_rr_question_buf(str, rr, &rr_len, &dname_len,
  ((void*)0), 0, ((void*)0), 0);
 if(status != 0) {
  log_warn("error cannot parse: %s %s",
   sldns_get_errorstr_parse(status), str);
  return ((void*)0);
 }
 qinfo->qtype = sldns_wirerr_get_type(rr, rr_len, dname_len);
 qinfo->qclass = sldns_wirerr_get_class(rr, rr_len, dname_len);
 qinfo->qname_len = dname_len;
 qinfo->qname = (uint8_t*)regional_alloc_init(region, rr, dname_len);
 qinfo->local_alias = ((void*)0);
 if(!qinfo->qname) {
  log_warn("error out of memory");
  return ((void*)0);
 }

 return s;
}
