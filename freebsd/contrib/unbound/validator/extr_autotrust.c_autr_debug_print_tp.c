
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trust_anchor {TYPE_1__* autr; scalar_t__ dnskey_rrset; scalar_t__ ds_rrset; scalar_t__ numDNSKEY; scalar_t__ numDS; scalar_t__ dclass; int name; } ;
struct autr_ta {struct autr_ta* next; } ;
struct TYPE_2__ {unsigned int file; struct autr_ta* keys; scalar_t__ query_failed; scalar_t__ retry_time; scalar_t__ query_interval; scalar_t__ next_probe_time; scalar_t__ last_success; scalar_t__ last_queried; } ;


 int autr_debug_print_ta (struct autr_ta*) ;
 int ctime_r (scalar_t__*,char*) ;
 int dname_str (int ,char*) ;
 int log_info (char*,...) ;
 int log_packed_rrset (int ,char*,scalar_t__) ;
 int strlen (char*) ;

__attribute__((used)) static void
autr_debug_print_tp(struct trust_anchor* tp)
{
 struct autr_ta* ta;
 char buf[257];
 if(!tp->autr)
  return;
 dname_str(tp->name, buf);
 log_info("trust point %s : %d", buf, (int)tp->dclass);
 log_info("assembled %d DS and %d DNSKEYs",
  (int)tp->numDS, (int)tp->numDNSKEY);
 if(tp->ds_rrset) {
  log_packed_rrset(0, "DS:", tp->ds_rrset);
 }
 if(tp->dnskey_rrset) {
  log_packed_rrset(0, "DNSKEY:", tp->dnskey_rrset);
 }
 log_info("file %s", tp->autr->file);
 ctime_r(&tp->autr->last_queried, buf);
 if(buf[0]) buf[strlen(buf)-1]=0;
 log_info("last_queried: %u %s", (unsigned)tp->autr->last_queried, buf);
 ctime_r(&tp->autr->last_success, buf);
 if(buf[0]) buf[strlen(buf)-1]=0;
 log_info("last_success: %u %s", (unsigned)tp->autr->last_success, buf);
 ctime_r(&tp->autr->next_probe_time, buf);
 if(buf[0]) buf[strlen(buf)-1]=0;
 log_info("next_probe_time: %u %s", (unsigned)tp->autr->next_probe_time,
  buf);
 log_info("query_interval: %u", (unsigned)tp->autr->query_interval);
 log_info("retry_time: %u", (unsigned)tp->autr->retry_time);
 log_info("query_failed: %u", (unsigned)tp->autr->query_failed);

 for(ta=tp->autr->keys; ta; ta=ta->next) {
  autr_debug_print_ta(ta);
 }
}
