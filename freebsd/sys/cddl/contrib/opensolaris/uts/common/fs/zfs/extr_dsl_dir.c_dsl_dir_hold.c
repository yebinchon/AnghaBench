
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_6__ {int dp_meta_objset; int dp_root_dir_obj; int dp_spa; } ;
typedef TYPE_1__ dsl_pool_t ;
typedef int dsl_dir_t ;
typedef int ddobj ;
struct TYPE_7__ {int dd_child_dir_zapobj; } ;


 int ASSERT (int) ;
 int ENOENT ;
 int EXDEV ;
 int SET_ERROR (int) ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int dprintf (char*,char const*,char const*,...) ;
 int dsl_dir_hold_obj (TYPE_1__*,int ,char*,void*,int **) ;
 TYPE_3__* dsl_dir_phys (int *) ;
 int dsl_dir_rele (int *,void*) ;
 int dsl_pool_config_held (TYPE_1__*) ;
 int getcomponent (char const*,char*,char const**) ;
 char* spa_name (int ) ;
 scalar_t__ strcmp (char*,char const*) ;
 int zap_lookup (int ,int ,char*,int,int,int *) ;

int
dsl_dir_hold(dsl_pool_t *dp, const char *name, void *tag,
    dsl_dir_t **ddp, const char **tailp)
{
 char buf[ZFS_MAX_DATASET_NAME_LEN];
 const char *spaname, *next, *nextnext = ((void*)0);
 int err;
 dsl_dir_t *dd;
 uint64_t ddobj;

 err = getcomponent(name, buf, &next);
 if (err != 0)
  return (err);


 spaname = spa_name(dp->dp_spa);
 if (strcmp(buf, spaname) != 0)
  return (SET_ERROR(EXDEV));

 ASSERT(dsl_pool_config_held(dp));

 err = dsl_dir_hold_obj(dp, dp->dp_root_dir_obj, ((void*)0), tag, &dd);
 if (err != 0) {
  return (err);
 }

 while (next != ((void*)0)) {
  dsl_dir_t *child_dd;
  err = getcomponent(next, buf, &nextnext);
  if (err != 0)
   break;
  ASSERT(next[0] != '\0');
  if (next[0] == '@')
   break;
  dprintf("looking up %s in obj%lld\n",
      buf, dsl_dir_phys(dd)->dd_child_dir_zapobj);

  err = zap_lookup(dp->dp_meta_objset,
      dsl_dir_phys(dd)->dd_child_dir_zapobj,
      buf, sizeof (ddobj), 1, &ddobj);
  if (err != 0) {
   if (err == ENOENT)
    err = 0;
   break;
  }

  err = dsl_dir_hold_obj(dp, ddobj, buf, tag, &child_dd);
  if (err != 0)
   break;
  dsl_dir_rele(dd, tag);
  dd = child_dd;
  next = nextnext;
 }

 if (err != 0) {
  dsl_dir_rele(dd, tag);
  return (err);
 }





 if (next != ((void*)0) &&
     (tailp == ((void*)0) || (nextnext && nextnext[0] != '\0'))) {

  dsl_dir_rele(dd, tag);
  dprintf("next=%p (%s) tail=%p\n", next, next?next:"", tailp);
  err = SET_ERROR(ENOENT);
 }
 if (tailp != ((void*)0))
  *tailp = next;
 *ddp = dd;
 return (err);
}
