
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ts ;
typedef int time_t ;
struct sockaddr_storage {int dummy; } ;
struct query_info {int qclass; int qtype; int * qname; } ;
struct lruhash_entry {int lock; int data; } ;
struct infra_cache {int dummy; } ;
struct comm_reply {int addrlen; int addr; } ;
typedef int ip ;
typedef int cs ;


 int VERB_OPS ;
 int addr_to_str (struct sockaddr_storage*,int ,char*,int) ;
 int dname_str (int *,char*) ;
 int infra_create_ratedata (struct infra_cache*,int *,size_t,int ) ;
 int infra_dp_ratelimit ;
 struct lruhash_entry* infra_find_ratedata (struct infra_cache*,int *,size_t,int) ;
 int infra_find_ratelimit (struct infra_cache*,int *,size_t) ;
 int* infra_rate_find_second (int ,int ) ;
 int infra_rate_max (int ,int ) ;
 int lock_rw_unlock (int *) ;
 int sldns_wire2str_class_buf (int ,char*,int) ;
 int sldns_wire2str_type_buf (int ,char*,int) ;
 int verbose (int ,char*,char*,int,char*,char*,char*,...) ;

int infra_ratelimit_inc(struct infra_cache* infra, uint8_t* name,
 size_t namelen, time_t timenow, struct query_info* qinfo,
 struct comm_reply* replylist)
{
 int lim, max;
 struct lruhash_entry* entry;

 if(!infra_dp_ratelimit)
  return 1;


 lim = infra_find_ratelimit(infra, name, namelen);
 if(!lim)
  return 1;


 entry = infra_find_ratedata(infra, name, namelen, 1);
 if(entry) {
  int premax = infra_rate_max(entry->data, timenow);
  int* cur = infra_rate_find_second(entry->data, timenow);
  (*cur)++;
  max = infra_rate_max(entry->data, timenow);
  lock_rw_unlock(&entry->lock);

  if(premax < lim && max >= lim) {
   char buf[257], qnm[257], ts[12], cs[12], ip[128];
   dname_str(name, buf);
   dname_str(qinfo->qname, qnm);
   sldns_wire2str_type_buf(qinfo->qtype, ts, sizeof(ts));
   sldns_wire2str_class_buf(qinfo->qclass, cs, sizeof(cs));
   ip[0]=0;
   if(replylist) {
    addr_to_str((struct sockaddr_storage *)&replylist->addr,
     replylist->addrlen, ip, sizeof(ip));
    verbose(VERB_OPS, "ratelimit exceeded %s %d query %s %s %s from %s", buf, lim, qnm, cs, ts, ip);
   } else {
    verbose(VERB_OPS, "ratelimit exceeded %s %d query %s %s %s", buf, lim, qnm, cs, ts);
   }
  }
  return (max < lim);
 }


 infra_create_ratedata(infra, name, namelen, timenow);
 return (1 < lim);
}
