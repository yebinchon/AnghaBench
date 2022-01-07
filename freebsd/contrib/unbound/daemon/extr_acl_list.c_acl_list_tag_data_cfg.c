
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_strlist {int dummy; } ;
struct config_file {int num_tags; } ;
struct acl_list {int region; } ;
struct acl_addr {size_t tag_datas_size; struct config_strlist** tag_datas; } ;


 struct acl_addr* acl_find_or_create (struct acl_list*,char const*) ;
 int cfg_region_strlist_insert (int ,struct config_strlist**,char*) ;
 int check_data (char const*,struct config_strlist*) ;
 int find_tag_id (struct config_file*,char const*) ;
 int log_err (char*,...) ;
 scalar_t__ regional_alloc_zero (int ,int) ;
 char* regional_strdup (int ,char const*) ;

__attribute__((used)) static int
acl_list_tag_data_cfg(struct acl_list* acl, struct config_file* cfg,
 const char* str, const char* tag, const char* data)
{
 struct acl_addr* node;
 int tagid;
 char* dupdata;
 if(!(node=acl_find_or_create(acl, str)))
  return 0;

 if(!node->tag_datas) {
  node->tag_datas = (struct config_strlist**)regional_alloc_zero(
   acl->region, sizeof(*node->tag_datas)*cfg->num_tags);
  if(!node->tag_datas) {
   log_err("out of memory");
   return 0;
  }
  node->tag_datas_size = (size_t)cfg->num_tags;
 }

 if((tagid=find_tag_id(cfg, tag)) == -1) {
  log_err("cannot parse tag (define-tag it): %s %s", str, tag);
  return 0;
 }
 if((size_t)tagid >= node->tag_datas_size) {
  log_err("tagid too large for array %s %s", str, tag);
  return 0;
 }


 if(!check_data(data, node->tag_datas[tagid])) {
  log_err("cannot parse access-control-tag data: %s %s '%s'",
   str, tag, data);
  return 0;
 }

 dupdata = regional_strdup(acl->region, data);
 if(!dupdata) {
  log_err("out of memory");
  return 0;
 }
 if(!cfg_region_strlist_insert(acl->region,
  &(node->tag_datas[tagid]), dupdata)) {
  log_err("out of memory");
  return 0;
 }
 return 1;
}
