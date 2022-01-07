
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_2__ {int flags; int dname_len; int dname; int rrset_class; int type; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; void* qclass; void* qtype; int qname_len; int qname; } ;
struct resp_addr {struct ub_packed_rrset_key* data; } ;
struct reply_info {struct ub_packed_rrset_key** rrsets; } ;
struct regional {int dummy; } ;
struct query_info {TYPE_1__ rk; void* qclass; void* qtype; int qname_len; int qname; } ;
struct config_strlist {int dummy; } ;
typedef int r ;
typedef enum respip_action { ____Placeholder_respip_action } respip_action ;
typedef int dataqinfo ;


 scalar_t__ LDNS_RR_TYPE_ANY ;
 int PACKED_RRSET_FIXEDTTL ;
 int VERB_ALGO ;
 struct ub_packed_rrset_key* copy_rrset (struct ub_packed_rrset_key*,struct regional*) ;
 scalar_t__ local_data_find_tag_datas (struct ub_packed_rrset_key*,struct config_strlist*,struct ub_packed_rrset_key*,struct regional*) ;
 struct reply_info* make_new_reply_info (struct reply_info const*,struct regional*,size_t,size_t) ;
 int memset (struct ub_packed_rrset_key*,int ,int) ;
 void* ntohs (int ) ;
 int respip_redirect ;
 int verbose (int ,char*,int,char* const) ;

__attribute__((used)) static int
respip_data_answer(const struct resp_addr* raddr, enum respip_action action,
 uint16_t qtype, const struct reply_info* rep,
 size_t rrset_id, struct reply_info** new_repp, int tag,
 struct config_strlist** tag_datas, size_t tag_datas_size,
 char* const* tagname, int num_tags,
 struct ub_packed_rrset_key** redirect_rrsetp, struct regional* region)
{
 struct ub_packed_rrset_key* rp = raddr->data;
 struct reply_info* new_rep;
 *redirect_rrsetp = ((void*)0);

 if(action == respip_redirect && tag != -1 &&
  (size_t)tag<tag_datas_size && tag_datas[tag]) {
  struct query_info dataqinfo;
  struct ub_packed_rrset_key r;





  memset(&dataqinfo, 0, sizeof(dataqinfo));
  dataqinfo.qname = rep->rrsets[rrset_id]->rk.dname;
  dataqinfo.qname_len = rep->rrsets[rrset_id]->rk.dname_len;
  dataqinfo.qtype = ntohs(rep->rrsets[rrset_id]->rk.type);
  dataqinfo.qclass = ntohs(rep->rrsets[rrset_id]->rk.rrset_class);

  memset(&r, 0, sizeof(r));
  if(local_data_find_tag_datas(&dataqinfo, tag_datas[tag], &r,
   region)) {
   verbose(VERB_ALGO,
    "response-ip redirect with tag data [%d] %s",
    tag, (tag<num_tags?tagname[tag]:"null"));

   rp = copy_rrset(&r, region);
   if(!rp)
    return -1;
  }
 }
 if(!rp)
  return 0;





 if(rp == raddr->data) {
  rp = copy_rrset(rp, region);
  if(!rp)
   return -1;
  rp->rk.dname = rep->rrsets[rrset_id]->rk.dname;
  rp->rk.dname_len = rep->rrsets[rrset_id]->rk.dname_len;
 }






 if(qtype == LDNS_RR_TYPE_ANY)
  rrset_id = 0;
 new_rep = make_new_reply_info(rep, region, rrset_id + 1, rrset_id);
 if(!new_rep)
  return -1;
 rp->rk.flags |= PACKED_RRSET_FIXEDTTL;
 new_rep->rrsets[rrset_id] = rp;

 *redirect_rrsetp = rp;
 *new_repp = new_rep;
 return 1;
}
