
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trust_anchor {TYPE_1__* autr; int dclass; int namelen; int name; } ;
struct autr_ta {scalar_t__ s; scalar_t__ last_change; scalar_t__ pending_count; int rr_len; int rr; int dname_len; struct autr_ta* next; } ;
struct TYPE_2__ {struct autr_ta* keys; scalar_t__ retry_time; scalar_t__ query_interval; scalar_t__ query_failed; scalar_t__ next_probe_time; scalar_t__ last_success; scalar_t__ last_queried; scalar_t__ revoked; } ;
typedef int FILE ;


 scalar_t__ AUTR_STATE_REMOVED ;
 scalar_t__ AUTR_STATE_START ;
 scalar_t__ LDNS_RR_TYPE_DNSKEY ;
 char* ctime_r (scalar_t__*,char*) ;
 int errno ;
 scalar_t__ fprintf (int *,char*,...) ;
 int free (char*) ;
 int log_err (char*,char*,...) ;
 int print_id (int *,char*,int ,int ,int ) ;
 char* sldns_wire2str_rr (int ,int ) ;
 scalar_t__ sldns_wirerr_get_type (int ,int ,int ) ;
 int strerror (int ) ;
 int strlen (char*) ;
 char* trustanchor_state2str (scalar_t__) ;

__attribute__((used)) static int
autr_write_contents(FILE* out, char* fn, struct trust_anchor* tp)
{
 char tmi[32];
 struct autr_ta* ta;
 char* str;


 if(fprintf(out, "; autotrust trust anchor file\n") < 0) {
  log_err("could not write to %s: %s", fn, strerror(errno));
  return 0;
 }
 if(tp->autr->revoked) {
  if(fprintf(out, ";;REVOKED\n") < 0 ||
     fprintf(out, "; The zone has all keys revoked, and is\n"
   "; considered as if it has no trust anchors.\n"
   "; the remainder of the file is the last probe.\n"
   "; to restart the trust anchor, overwrite this file.\n"
   "; with one containing valid DNSKEYs or DSes.\n") < 0) {
     log_err("could not write to %s: %s", fn, strerror(errno));
     return 0;
  }
 }
 if(!print_id(out, fn, tp->name, tp->namelen, tp->dclass)) {
  return 0;
 }
 if(fprintf(out, ";;last_queried: %u ;;%s",
  (unsigned int)tp->autr->last_queried,
  ctime_r(&(tp->autr->last_queried), tmi)) < 0 ||
    fprintf(out, ";;last_success: %u ;;%s",
  (unsigned int)tp->autr->last_success,
  ctime_r(&(tp->autr->last_success), tmi)) < 0 ||
    fprintf(out, ";;next_probe_time: %u ;;%s",
  (unsigned int)tp->autr->next_probe_time,
  ctime_r(&(tp->autr->next_probe_time), tmi)) < 0 ||
    fprintf(out, ";;query_failed: %d\n", (int)tp->autr->query_failed)<0
    || fprintf(out, ";;query_interval: %d\n",
    (int)tp->autr->query_interval) < 0 ||
    fprintf(out, ";;retry_time: %d\n", (int)tp->autr->retry_time) < 0) {
  log_err("could not write to %s: %s", fn, strerror(errno));
  return 0;
 }


 for(ta=tp->autr->keys; ta; ta=ta->next) {

  if(ta->s == AUTR_STATE_START)
   continue;
  if(ta->s == AUTR_STATE_REMOVED)
   continue;

  if(sldns_wirerr_get_type(ta->rr, ta->rr_len, ta->dname_len)
   != LDNS_RR_TYPE_DNSKEY)
   continue;
  str = sldns_wire2str_rr(ta->rr, ta->rr_len);
  if(!str || !str[0]) {
   free(str);
   log_err("malloc failure writing %s", fn);
   return 0;
  }
  str[strlen(str)-1] = 0;
  if(fprintf(out, "%s ;;state=%d [%s] ;;count=%d "
   ";;lastchange=%u ;;%s", str, (int)ta->s,
   trustanchor_state2str(ta->s), (int)ta->pending_count,
   (unsigned int)ta->last_change,
   ctime_r(&(ta->last_change), tmi)) < 0) {
     log_err("could not write to %s: %s", fn, strerror(errno));
     free(str);
     return 0;
  }
  free(str);
 }
 return 1;
}
