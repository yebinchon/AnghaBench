
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct view {int lock; int name; int isfirst; scalar_t__ local_zones; } ;
struct regional {int dummy; } ;
struct query_info {int local_alias; int qtype; int qclass; int qname_len; int qname; } ;
struct module_env {TYPE_1__* cfg; } ;
struct local_zones {int lock; } ;
struct local_zone {int type; int lock; int name; int override_tree; int taglen; int taglist; } ;
struct local_data {int dummy; } ;
struct edns_data {int dummy; } ;
struct config_strlist {int dummy; } ;
struct comm_reply {int dummy; } ;
typedef int sldns_buffer ;
typedef enum localzone_type { ____Placeholder_localzone_type } localzone_type ;
struct TYPE_2__ {scalar_t__ log_local_actions; } ;


 scalar_t__ VERB_ALGO ;
 int dname_count_labels (int ) ;
 int dname_str (int ,char*) ;
 scalar_t__ local_data_answer (struct local_zone*,struct module_env*,struct query_info*,struct edns_data*,struct comm_reply*,int *,struct regional*,int,struct local_data**,int,int,struct config_strlist**,size_t,char**,int) ;
 int local_zone_always_nxdomain ;
 int local_zone_always_refuse ;
 int local_zone_always_transparent ;
 scalar_t__ local_zone_does_not_cover (struct local_zone*,struct query_info*,int) ;
 int local_zone_inform ;
 int local_zone_inform_deny ;
 int local_zone_inform_redirect ;
 int local_zone_noview ;
 int local_zone_transparent ;
 int local_zone_type2str (int) ;
 int local_zone_typetransparent ;
 struct local_zone* local_zones_lookup (scalar_t__,int ,int ,int,int ,int ) ;
 struct local_zone* local_zones_tags_lookup (struct local_zones*,int ,int ,int,int ,int ,int *,size_t,int ) ;
 int lock_rw_rdlock (int *) ;
 int lock_rw_unlock (int *) ;
 int lz_inform_print (struct local_zone*,struct query_info*,struct comm_reply*) ;
 int lz_type (int *,size_t,int ,int ,int *,size_t,int,struct comm_reply*,int ,int*,char**,int) ;
 int lz_zone_answer (struct local_zone*,struct module_env*,struct query_info*,struct edns_data*,struct comm_reply*,int *,struct regional*,struct local_data*,int) ;
 int verbose (scalar_t__,char*,char*,int ,...) ;
 scalar_t__ verbosity ;

int
local_zones_answer(struct local_zones* zones, struct module_env* env,
 struct query_info* qinfo, struct edns_data* edns, sldns_buffer* buf,
 struct regional* temp, struct comm_reply* repinfo, uint8_t* taglist,
 size_t taglen, uint8_t* tagactions, size_t tagactionssize,
 struct config_strlist** tag_datas, size_t tag_datas_size,
 char** tagname, int num_tags, struct view* view)
{



 int labs = dname_count_labels(qinfo->qname);
 struct local_data* ld = ((void*)0);
 struct local_zone* z = ((void*)0);
 enum localzone_type lzt = local_zone_transparent;
 int r, tag = -1;

 if(view) {
  lock_rw_rdlock(&view->lock);
  if(view->local_zones &&
   (z = local_zones_lookup(view->local_zones,
   qinfo->qname, qinfo->qname_len, labs,
   qinfo->qclass, qinfo->qtype))) {
   lock_rw_rdlock(&z->lock);
   lzt = z->type;
  }
  if(lzt == local_zone_noview) {
   lock_rw_unlock(&z->lock);
   z = ((void*)0);
  }
  if(z && (lzt == local_zone_transparent ||
   lzt == local_zone_typetransparent ||
   lzt == local_zone_inform ||
   lzt == local_zone_always_transparent) &&
   local_zone_does_not_cover(z, qinfo, labs)) {
   lock_rw_unlock(&z->lock);
   z = ((void*)0);
  }
  if(view->local_zones && !z && !view->isfirst){
   lock_rw_unlock(&view->lock);
   return 0;
  }
  if(z && verbosity >= VERB_ALGO) {
   char zname[255+1];
   dname_str(z->name, zname);
   verbose(VERB_ALGO, "using localzone %s %s from view %s",
    zname, local_zone_type2str(lzt), view->name);
  }
  lock_rw_unlock(&view->lock);
 }
 if(!z) {

  lock_rw_rdlock(&zones->lock);
  if(!(z = local_zones_tags_lookup(zones, qinfo->qname,
   qinfo->qname_len, labs, qinfo->qclass, qinfo->qtype,
   taglist, taglen, 0))) {
   lock_rw_unlock(&zones->lock);
   return 0;
  }
  lock_rw_rdlock(&z->lock);
  lzt = lz_type(taglist, taglen, z->taglist, z->taglen,
   tagactions, tagactionssize, z->type, repinfo,
   z->override_tree, &tag, tagname, num_tags);
  lock_rw_unlock(&zones->lock);
  if(z && verbosity >= VERB_ALGO) {
   char zname[255+1];
   dname_str(z->name, zname);
   verbose(VERB_ALGO, "using localzone %s %s", zname,
    local_zone_type2str(lzt));
  }
 }
 if((env->cfg->log_local_actions ||
   lzt == local_zone_inform ||
   lzt == local_zone_inform_deny ||
   lzt == local_zone_inform_redirect)
   && repinfo)
  lz_inform_print(z, qinfo, repinfo);

 if(lzt != local_zone_always_refuse
  && lzt != local_zone_always_transparent
  && lzt != local_zone_always_nxdomain
  && local_data_answer(z, env, qinfo, edns, repinfo, buf, temp, labs,
   &ld, lzt, tag, tag_datas, tag_datas_size, tagname, num_tags)) {
  lock_rw_unlock(&z->lock);


  return !qinfo->local_alias;
 }
 r = lz_zone_answer(z, env, qinfo, edns, repinfo, buf, temp, ld, lzt);
 lock_rw_unlock(&z->lock);
 return r && !qinfo->local_alias;
}
