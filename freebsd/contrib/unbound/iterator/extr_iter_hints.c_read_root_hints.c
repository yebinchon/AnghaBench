
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {int lineno; int sin6_addr; void* sin6_port; int sin6_family; int sin_addr; void* sin_port; int sin_family; } ;
struct sockaddr_in {int lineno; int sin6_addr; void* sin6_port; int sin6_family; int sin_addr; void* sin_port; int sin_family; } ;
struct sldns_file_parse_state {int lineno; int sin6_addr; void* sin6_port; int sin6_family; int sin_addr; void* sin_port; int sin_family; } ;
struct iter_hints {int dummy; } ;
struct delegpt {int has_parent_side_NS; int name; } ;
typedef int socklen_t ;
typedef int sa ;
typedef int rr ;
typedef int pstate ;
typedef void* in_port_t ;
typedef int buf ;
typedef int FILE ;


 int AF_INET ;
 int AF_INET6 ;
 scalar_t__ INET6_SIZE ;
 scalar_t__ INET_SIZE ;
 int LDNS_RR_BUF_SIZE ;
 int LDNS_RR_CLASS_IN ;
 scalar_t__ LDNS_RR_TYPE_A ;
 scalar_t__ LDNS_RR_TYPE_AAAA ;
 scalar_t__ LDNS_RR_TYPE_NS ;
 int LDNS_WIREPARSE_OFFSET (int) ;
 int UNBOUND_DNS_PORT ;
 int VERB_QUERY ;
 int delegpt_add_ns_mlc (struct delegpt*,int ,int ) ;
 int delegpt_add_target_mlc (struct delegpt*,int *,size_t,struct sockaddr_storage*,int,int ,int ) ;
 struct delegpt* delegpt_create_mlc (int *) ;
 int delegpt_free_mlc (struct delegpt*) ;
 int delegpt_log (int ,struct delegpt*) ;
 int delegpt_set_name_mlc (struct delegpt*,int *) ;
 int errno ;
 int fclose (int *) ;
 int feof (int *) ;
 int * fopen (char*,char*) ;
 int hints_insert (struct iter_hints*,int ,struct delegpt*,int ) ;
 scalar_t__ htons (int ) ;
 int log_err (char*,...) ;
 int log_warn (char*,char*,...) ;
 int memmove (int *,int ,scalar_t__) ;
 int memset (struct sockaddr_in6*,int ,int) ;
 int sldns_fp2wire_rr_buf (int *,int *,size_t*,size_t*,struct sockaddr_in6*) ;
 int sldns_get_errorstr_parse (int) ;
 int sldns_wire2str_type_buf (scalar_t__,char*,int) ;
 int sldns_wirerr_get_class (int *,size_t,size_t) ;
 int sldns_wirerr_get_rdata (int *,size_t,size_t) ;
 scalar_t__ sldns_wirerr_get_rdatalen (int *,size_t,size_t) ;
 scalar_t__ sldns_wirerr_get_type (int *,size_t,size_t) ;
 int strerror (int ) ;
 int verbose (int ,char*,char*) ;

__attribute__((used)) static int
read_root_hints(struct iter_hints* hints, char* fname)
{
 struct sldns_file_parse_state pstate;
 struct delegpt* dp;
 uint8_t rr[LDNS_RR_BUF_SIZE];
 size_t rr_len, dname_len;
 int status;
 uint16_t c = LDNS_RR_CLASS_IN;
 FILE* f = fopen(fname, "r");
 if(!f) {
  log_err("could not read root hints %s: %s",
   fname, strerror(errno));
  return 0;
 }
 dp = delegpt_create_mlc(((void*)0));
 if(!dp) {
  log_err("out of memory reading root hints");
  fclose(f);
  return 0;
 }
 verbose(VERB_QUERY, "Reading root hints from %s", fname);
 memset(&pstate, 0, sizeof(pstate));
 pstate.lineno = 1;
 dp->has_parent_side_NS = 1;
 while(!feof(f)) {
  rr_len = sizeof(rr);
  dname_len = 0;
  status = sldns_fp2wire_rr_buf(f, rr, &rr_len, &dname_len,
   &pstate);
  if(status != 0) {
   log_err("reading root hints %s %d:%d: %s", fname,
    pstate.lineno, LDNS_WIREPARSE_OFFSET(status),
    sldns_get_errorstr_parse(status));
   goto stop_read;
  }
  if(rr_len == 0)
   continue;
  if(sldns_wirerr_get_type(rr, rr_len, dname_len)
   == LDNS_RR_TYPE_NS) {
   if(!delegpt_add_ns_mlc(dp, sldns_wirerr_get_rdata(rr,
    rr_len, dname_len), 0)) {
    log_err("out of memory reading root hints");
    goto stop_read;
   }
   c = sldns_wirerr_get_class(rr, rr_len, dname_len);
   if(!dp->name) {
    if(!delegpt_set_name_mlc(dp, rr)) {
     log_err("out of memory.");
     goto stop_read;
    }
   }
  } else if(sldns_wirerr_get_type(rr, rr_len, dname_len)
   == LDNS_RR_TYPE_A && sldns_wirerr_get_rdatalen(rr,
   rr_len, dname_len) == INET_SIZE) {
   struct sockaddr_in sa;
   socklen_t len = (socklen_t)sizeof(sa);
   memset(&sa, 0, len);
   sa.sin_family = AF_INET;
   sa.sin_port = (in_port_t)htons(UNBOUND_DNS_PORT);
   memmove(&sa.sin_addr,
    sldns_wirerr_get_rdata(rr, rr_len, dname_len),
    INET_SIZE);
   if(!delegpt_add_target_mlc(dp, rr, dname_len,
     (struct sockaddr_storage*)&sa, len,
     0, 0)) {
    log_err("out of memory reading root hints");
    goto stop_read;
   }
  } else if(sldns_wirerr_get_type(rr, rr_len, dname_len)
   == LDNS_RR_TYPE_AAAA && sldns_wirerr_get_rdatalen(rr,
   rr_len, dname_len) == INET6_SIZE) {
   struct sockaddr_in6 sa;
   socklen_t len = (socklen_t)sizeof(sa);
   memset(&sa, 0, len);
   sa.sin6_family = AF_INET6;
   sa.sin6_port = (in_port_t)htons(UNBOUND_DNS_PORT);
   memmove(&sa.sin6_addr,
    sldns_wirerr_get_rdata(rr, rr_len, dname_len),
    INET6_SIZE);
   if(!delegpt_add_target_mlc(dp, rr, dname_len,
     (struct sockaddr_storage*)&sa, len,
     0, 0)) {
    log_err("out of memory reading root hints");
    goto stop_read;
   }
  } else {
   char buf[17];
   sldns_wire2str_type_buf(sldns_wirerr_get_type(rr,
    rr_len, dname_len), buf, sizeof(buf));
   log_warn("root hints %s:%d skipping type %s",
    fname, pstate.lineno, buf);
  }
 }
 fclose(f);
 if(!dp->name) {
  log_warn("root hints %s: no NS content", fname);
  delegpt_free_mlc(dp);
  return 1;
 }
 if(!hints_insert(hints, c, dp, 0)) {
  return 0;
 }
 delegpt_log(VERB_QUERY, dp);
 return 1;

stop_read:
 delegpt_free_mlc(dp);
 fclose(f);
 return 0;
}
