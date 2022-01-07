
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int spa_config_list; } ;
typedef TYPE_1__ spa_t ;
struct TYPE_8__ {int * scd_path; } ;
typedef TYPE_2__ spa_config_dirent_t ;
typedef int nvlist_t ;
typedef scalar_t__ boolean_t ;


 int KM_SLEEP ;
 int SPA_ASYNC_CONFIG_UPDATE ;
 int ZPOOL_PROP_CACHEFILE ;
 TYPE_2__* kmem_alloc (int,int ) ;
 int list_insert_head (int *,TYPE_2__*) ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 int spa_async_request (TYPE_1__*,int ) ;
 char* spa_config_path ;
 void* spa_strdup (char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int zpool_prop_to_name (int ) ;

void
spa_configfile_set(spa_t *spa, nvlist_t *nvp, boolean_t need_sync)
{
 char *cachefile;
 spa_config_dirent_t *dp;

 if (nvlist_lookup_string(nvp, zpool_prop_to_name(ZPOOL_PROP_CACHEFILE),
     &cachefile) != 0)
  return;

 dp = kmem_alloc(sizeof (spa_config_dirent_t),
     KM_SLEEP);

 if (cachefile[0] == '\0')
  dp->scd_path = spa_strdup(spa_config_path);
 else if (strcmp(cachefile, "none") == 0)
  dp->scd_path = ((void*)0);
 else
  dp->scd_path = spa_strdup(cachefile);

 list_insert_head(&spa->spa_config_list, dp);
 if (need_sync)
  spa_async_request(spa, SPA_ASYNC_CONFIG_UPDATE);
}
