
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct sockaddr_storage {int dummy; } ;
struct sldns_buffer {int dummy; } ;
struct lruhash_entry {int lock; int data; } ;
struct infra_cache {int dummy; } ;
struct comm_reply {int addrlen; int addr; } ;
typedef int qnm ;
typedef int client_ip ;


 scalar_t__ LDNS_HEADER_SIZE ;
 int LDNS_MAX_DOMAINLEN ;
 scalar_t__ LDNS_QDCOUNT (int ) ;
 int VERB_OPS ;
 int addr_to_str (struct sockaddr_storage*,int ,char*,int) ;
 struct lruhash_entry* infra_find_ip_ratedata (struct infra_cache*,struct comm_reply*,int) ;
 int infra_ip_create_ratedata (struct infra_cache*,struct comm_reply*,int ) ;
 int infra_ip_ratelimit ;
 int* infra_rate_find_second (int ,int ) ;
 int infra_rate_max (int ,int ) ;
 int lock_rw_unlock (int *) ;
 int sldns_buffer_at (struct sldns_buffer*,scalar_t__) ;
 int sldns_buffer_begin (struct sldns_buffer*) ;
 scalar_t__ sldns_buffer_limit (struct sldns_buffer*) ;
 int sldns_wire2str_rrquestion_buf (int ,scalar_t__,char*,int) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 int verbose (int ,char*,char*,int,...) ;

int infra_ip_ratelimit_inc(struct infra_cache* infra,
  struct comm_reply* repinfo, time_t timenow, struct sldns_buffer* buffer)
{
 int max;
 struct lruhash_entry* entry;


 if(!infra_ip_ratelimit) {
  return 1;
 }

 entry = infra_find_ip_ratedata(infra, repinfo, 1);
 if(entry) {
  int premax = infra_rate_max(entry->data, timenow);
  int* cur = infra_rate_find_second(entry->data, timenow);
  (*cur)++;
  max = infra_rate_max(entry->data, timenow);
  lock_rw_unlock(&entry->lock);

  if(premax < infra_ip_ratelimit && max >= infra_ip_ratelimit) {
   char client_ip[128], qnm[LDNS_MAX_DOMAINLEN+1+12+12];
   addr_to_str((struct sockaddr_storage *)&repinfo->addr,
    repinfo->addrlen, client_ip, sizeof(client_ip));
   qnm[0]=0;
   if(sldns_buffer_limit(buffer)>LDNS_HEADER_SIZE &&
    LDNS_QDCOUNT(sldns_buffer_begin(buffer))!=0) {
    (void)sldns_wire2str_rrquestion_buf(
     sldns_buffer_at(buffer, LDNS_HEADER_SIZE),
     sldns_buffer_limit(buffer)-LDNS_HEADER_SIZE,
     qnm, sizeof(qnm));
    if(strlen(qnm)>0 && qnm[strlen(qnm)-1]=='\n')
     qnm[strlen(qnm)-1] = 0;
    if(strchr(qnm, '\t'))
     *strchr(qnm, '\t') = ' ';
    if(strchr(qnm, '\t'))
     *strchr(qnm, '\t') = ' ';
    verbose(VERB_OPS, "ip_ratelimit exceeded %s %d %s",
     client_ip, infra_ip_ratelimit, qnm);
   } else {
    verbose(VERB_OPS, "ip_ratelimit exceeded %s %d (no query name)",
     client_ip, infra_ip_ratelimit);
   }
  }
  return (max <= infra_ip_ratelimit);
 }


 infra_ip_create_ratedata(infra, repinfo, timenow);
 return 1;
}
