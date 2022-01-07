
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint_t ;
typedef int nvlist_t ;


 int DATA_TYPE_UINT64_ARRAY ;
 int ZPOOL_CONFIG_CHILDREN ;
 int ZPOOL_CONFIG_SCAN_STATS ;
 int ZPOOL_CONFIG_VDEV_STATS ;
 int ZPOOL_CONFIG_VDEV_TREE ;
 scalar_t__ nvlist_lookup_nvlist (int *,int ,int **) ;
 scalar_t__ nvlist_lookup_nvlist_array (int *,int ,int ***,size_t*) ;
 int nvlist_remove (int *,int ,int ) ;

__attribute__((used)) static void
spa_config_clean(nvlist_t *nvl)
{
 nvlist_t **child;
 nvlist_t *nvroot = ((void*)0);
 uint_t c, children;

 if (nvlist_lookup_nvlist_array(nvl, ZPOOL_CONFIG_CHILDREN, &child,
     &children) == 0) {
  for (c = 0; c < children; c++)
   spa_config_clean(child[c]);
 }

 if (nvlist_lookup_nvlist(nvl, ZPOOL_CONFIG_VDEV_TREE, &nvroot) == 0)
  spa_config_clean(nvroot);

 nvlist_remove(nvl, ZPOOL_CONFIG_VDEV_STATS, DATA_TYPE_UINT64_ARRAY);
 nvlist_remove(nvl, ZPOOL_CONFIG_SCAN_STATS, DATA_TYPE_UINT64_ARRAY);
}
