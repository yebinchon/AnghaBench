
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct views {int dummy; } ;
struct view {int lock; int local_zones; scalar_t__ isfirst; } ;
struct config_view {struct config_strlist* local_zones_nodefault; int * local_data; int * local_zones; scalar_t__ isfirst; int name; struct config_view* next; } ;
struct config_strlist {char* str; struct config_strlist* next; } ;
struct config_file {int local_zones_disable_default; int * local_zones; struct config_strlist* local_zones_nodefault; int * local_data; struct config_view* views; } ;
typedef int lz_cfg ;


 int cfg_str2list_insert (int **,char*,char*) ;
 int free (char*) ;
 int local_zones_apply_cfg (int ,struct config_file*) ;
 int local_zones_create () ;
 int lock_rw_unlock (int *) ;
 int log_err (char*) ;
 int memset (struct config_file*,int ,int) ;
 char* strdup (char*) ;
 struct view* views_enter_view_name (struct views*,int ) ;

int
views_apply_cfg(struct views* vs, struct config_file* cfg)
{
 struct config_view* cv;
 struct view* v;
 struct config_file lz_cfg;


 if(cfg->views && !cfg->views->name) {
  log_err("view without a name");
  return 0;
 }
 for(cv = cfg->views; cv; cv = cv->next) {

  if(!(v = views_enter_view_name(vs, cv->name)))
   return 0;
  v->isfirst = cv->isfirst;
  if(cv->local_zones || cv->local_data) {
   if(!(v->local_zones = local_zones_create())){
    lock_rw_unlock(&v->lock);
    return 0;
   }
   memset(&lz_cfg, 0, sizeof(lz_cfg));
   lz_cfg.local_zones = cv->local_zones;
   lz_cfg.local_data = cv->local_data;
   lz_cfg.local_zones_nodefault =
    cv->local_zones_nodefault;
   if(v->isfirst) {



    struct config_strlist* nd;
    lz_cfg.local_zones_disable_default = 1;



    for(nd = cv->local_zones_nodefault; nd;
     nd = nd->next) {
     char* nd_str, *nd_type;
     nd_str = strdup(nd->str);
     if(!nd_str) {
      log_err("out of memory");
      lock_rw_unlock(&v->lock);
      return 0;
     }
     nd_type = strdup("nodefault");
     if(!nd_type) {
      log_err("out of memory");
      free(nd_str);
      lock_rw_unlock(&v->lock);
      return 0;
     }
     if(!cfg_str2list_insert(
      &lz_cfg.local_zones, nd_str,
      nd_type)) {
      log_err("failed to insert "
       "default zones into "
       "local-zone list");
      free(nd_str);
      free(nd_type);
      lock_rw_unlock(&v->lock);
      return 0;
     }
    }
   }
   if(!local_zones_apply_cfg(v->local_zones, &lz_cfg)){
    lock_rw_unlock(&v->lock);
    return 0;
   }



   cv->local_zones = ((void*)0);
   cv->local_data = ((void*)0);
   cv->local_zones_nodefault = ((void*)0);
  }
  lock_rw_unlock(&v->lock);
 }
 return 1;
}
