
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct view {int lock; int isfirst; TYPE_1__* respip_set; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct ub_packed_rrset_key {TYPE_2__ rk; } ;
struct respip_set {int num_tags; int tagname; int ip_tree; } ;
struct respip_client_info {size_t taglen; size_t tag_actions_size; size_t tag_datas_size; struct respip_set* respip_set; struct view* view; struct config_strlist** tag_datas; int * tag_actions; int * taglist; } ;
struct respip_action_info {int dummy; } ;
struct resp_addr {int action; int taglen; int taglist; } ;
struct reply_info {int dummy; } ;
struct regional {int dummy; } ;
struct query_info {int qtype; } ;
struct config_strlist {int dummy; } ;
typedef enum respip_action { ____Placeholder_respip_action } respip_action ;
typedef enum localzone_type { ____Placeholder_localzone_type } localzone_type ;
struct TYPE_3__ {int ip_tree; } ;


 int LDNS_RR_TYPE_ANY ;
 int LDNS_RR_TYPE_CNAME ;
 scalar_t__ local_data_find_tag_action (int ,int ,int const*,size_t,int const*,size_t,int,int*,int ,int ) ;
 int lock_rw_rdlock (int *) ;
 int lock_rw_unlock (int *) ;
 scalar_t__ ntohs (int ) ;
 int populate_action_info (struct respip_action_info*,int,struct resp_addr const*,struct ub_packed_rrset_key*,int,struct respip_set*,int,struct regional*) ;
 struct resp_addr* respip_addr_lookup (struct reply_info const*,int *,size_t*) ;
 int respip_always_nxdomain ;
 int respip_always_refuse ;
 int respip_always_transparent ;
 int respip_data_answer (struct resp_addr const*,int,int ,struct reply_info const*,size_t,struct reply_info**,int,struct config_strlist**,size_t,int ,int ,struct ub_packed_rrset_key**,struct regional*) ;
 int respip_nodata_answer (int ,int,struct reply_info const*,size_t,struct reply_info**,struct regional*) ;
 int respip_none ;

int
respip_rewrite_reply(const struct query_info* qinfo,
 const struct respip_client_info* cinfo, const struct reply_info* rep,
 struct reply_info** new_repp, struct respip_action_info* actinfo,
 struct ub_packed_rrset_key** alias_rrset, int search_only,
 struct regional* region)
{
 const uint8_t* ctaglist;
 size_t ctaglen;
 const uint8_t* tag_actions;
 size_t tag_actions_size;
 struct config_strlist** tag_datas;
 size_t tag_datas_size;
 struct view* view = ((void*)0);
 struct respip_set* ipset = ((void*)0);
 size_t rrset_id = 0;
 enum respip_action action = respip_none;
 int tag = -1;
 const struct resp_addr* raddr = ((void*)0);
 int ret = 1;
 struct ub_packed_rrset_key* redirect_rrset = ((void*)0);

 if(!cinfo)
  goto done;
 ctaglist = cinfo->taglist;
 ctaglen = cinfo->taglen;
 tag_actions = cinfo->tag_actions;
 tag_actions_size = cinfo->tag_actions_size;
 tag_datas = cinfo->tag_datas;
 tag_datas_size = cinfo->tag_datas_size;
 view = cinfo->view;
 ipset = cinfo->respip_set;
 if(view) {
  lock_rw_rdlock(&view->lock);
  if(view->respip_set) {
   if((raddr = respip_addr_lookup(rep,
    &view->respip_set->ip_tree, &rrset_id))) {


    action = raddr->action;
   }
  }
  if(!raddr && !view->isfirst)
   goto done;
 }
 if(!raddr && ipset && (raddr = respip_addr_lookup(rep, &ipset->ip_tree,
  &rrset_id))) {
  action = (enum respip_action)local_data_find_tag_action(
   raddr->taglist, raddr->taglen, ctaglist, ctaglen,
   tag_actions, tag_actions_size,
   (enum localzone_type)raddr->action, &tag,
   ipset->tagname, ipset->num_tags);
 }
 if(raddr && !search_only) {
  int result = 0;



  if(action != respip_always_refuse
   && action != respip_always_transparent
   && action != respip_always_nxdomain
   && (result = respip_data_answer(raddr, action,
   qinfo->qtype, rep, rrset_id, new_repp, tag, tag_datas,
   tag_datas_size, ipset->tagname, ipset->num_tags,
   &redirect_rrset, region)) < 0) {
   ret = 0;
   goto done;
  }



  if(!result && !respip_nodata_answer(qinfo->qtype, action, rep,
   rrset_id, new_repp, region)) {
   ret = 0;
   goto done;
  }
 }
  done:
 if(view) {
  lock_rw_unlock(&view->lock);
 }
 if(ret) {







  if(redirect_rrset &&
   redirect_rrset->rk.type == ntohs(LDNS_RR_TYPE_CNAME) &&
   qinfo->qtype != LDNS_RR_TYPE_ANY)
   *alias_rrset = redirect_rrset;

  ret = populate_action_info(actinfo, action, raddr,
   redirect_rrset, tag, ipset, search_only, region);
 }
 return ret;
}
