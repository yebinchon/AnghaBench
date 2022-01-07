
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int * now; int rrset_cache; } ;
struct worker {TYPE_1__ env; } ;
struct TYPE_4__ {int lock; } ;
struct ub_packed_rrset_key {TYPE_2__ entry; } ;
struct regional {int dummy; } ;
struct query_info {int qclass; int qtype; int qname_len; int qname; } ;
typedef int sldns_buffer ;
typedef int RES ;


 char* load_qinfo (char*,struct query_info*,struct regional*) ;
 int lock_rw_unlock (int *) ;
 int log_warn (char*,char*) ;
 struct ub_packed_rrset_key* packed_rrset_copy_region (struct ub_packed_rrset_key*,struct regional*,int ) ;
 struct ub_packed_rrset_key* rrset_cache_lookup (int ,int ,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ sldns_buffer_begin (int *) ;
 int sscanf (char*,char*,unsigned int*) ;
 int ssl_read_buf (int *,int *) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int
load_ref(RES* ssl, sldns_buffer* buf, struct worker* worker,
 struct regional *region, struct ub_packed_rrset_key** rrset,
 int* go_on)
{
 char* s = (char*)sldns_buffer_begin(buf);
 struct query_info qinfo;
 unsigned int flags;
 struct ub_packed_rrset_key* k;


 if(!ssl_read_buf(ssl, buf))
  return 0;
 if(strncmp(s, "BADREF", 6) == 0) {
  *go_on = 0;
  return 1;
 }

 s = load_qinfo(s, &qinfo, region);
 if(!s) {
  return 0;
 }
 if(sscanf(s, " %u", &flags) != 1) {
  log_warn("error cannot parse flags: %s", s);
  return 0;
 }


 k = rrset_cache_lookup(worker->env.rrset_cache, qinfo.qname,
  qinfo.qname_len, qinfo.qtype, qinfo.qclass,
  (uint32_t)flags, *worker->env.now, 0);
 if(!k) {

  *go_on = 0;
  return 1;
 }


 *rrset = packed_rrset_copy_region(k, region, *worker->env.now);
 lock_rw_unlock(&k->entry.lock);

 return (*rrset != ((void*)0));
}
