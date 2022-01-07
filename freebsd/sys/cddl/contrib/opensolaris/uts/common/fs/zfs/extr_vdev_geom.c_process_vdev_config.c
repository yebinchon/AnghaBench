
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int nvlist_t ;


 int VERIFY (int) ;
 int ZPOOL_CONFIG_ID ;
 int ZPOOL_CONFIG_POOL_GUID ;
 int ZPOOL_CONFIG_POOL_NAME ;
 int ZPOOL_CONFIG_POOL_TXG ;
 int ZPOOL_CONFIG_TOP_GUID ;
 int ZPOOL_CONFIG_VDEV_TREE ;
 int nvlist_free (int *) ;
 scalar_t__ nvlist_lookup_nvlist (int *,int ,int **) ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;
 int resize_configs (int ***,scalar_t__*,scalar_t__) ;
 scalar_t__ strcmp (char*,char const*) ;

__attribute__((used)) static void
process_vdev_config(nvlist_t ***configs, uint64_t *count, nvlist_t *cfg,
    const char *name, uint64_t* known_pool_guid)
{
 nvlist_t *vdev_tree;
 uint64_t pool_guid;
 uint64_t vdev_guid, known_guid;
 uint64_t id, txg, known_txg;
 char *pname;
 int i;

 if (nvlist_lookup_string(cfg, ZPOOL_CONFIG_POOL_NAME, &pname) != 0 ||
     strcmp(pname, name) != 0)
  goto ignore;

 if (nvlist_lookup_uint64(cfg, ZPOOL_CONFIG_POOL_GUID, &pool_guid) != 0)
  goto ignore;

 if (nvlist_lookup_uint64(cfg, ZPOOL_CONFIG_TOP_GUID, &vdev_guid) != 0)
  goto ignore;

 if (nvlist_lookup_nvlist(cfg, ZPOOL_CONFIG_VDEV_TREE, &vdev_tree) != 0)
  goto ignore;

 if (nvlist_lookup_uint64(vdev_tree, ZPOOL_CONFIG_ID, &id) != 0)
  goto ignore;

 VERIFY(nvlist_lookup_uint64(cfg, ZPOOL_CONFIG_POOL_TXG, &txg) == 0);

 if (*known_pool_guid != 0) {
  if (pool_guid != *known_pool_guid)
   goto ignore;
 } else
  *known_pool_guid = pool_guid;

 resize_configs(configs, count, id);

 if ((*configs)[id] != ((void*)0)) {
  VERIFY(nvlist_lookup_uint64((*configs)[id],
      ZPOOL_CONFIG_POOL_TXG, &known_txg) == 0);
  if (txg <= known_txg)
   goto ignore;
  nvlist_free((*configs)[id]);
 }

 (*configs)[id] = cfg;
 return;

ignore:
 nvlist_free(cfg);
}
