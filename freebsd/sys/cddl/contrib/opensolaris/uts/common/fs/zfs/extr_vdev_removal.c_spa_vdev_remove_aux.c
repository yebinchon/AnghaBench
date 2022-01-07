
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int DATA_TYPE_NVLIST_ARRAY ;
 int KM_SLEEP ;
 int VERIFY (int) ;
 int ** kmem_alloc (int,int ) ;
 int kmem_free (int **,int) ;
 scalar_t__ nvlist_add_nvlist_array (int *,char*,int **,int) ;
 scalar_t__ nvlist_dup (int *,int **,int ) ;
 int nvlist_free (int *) ;
 scalar_t__ nvlist_remove (int *,char*,int ) ;

__attribute__((used)) static void
spa_vdev_remove_aux(nvlist_t *config, char *name, nvlist_t **dev, int count,
    nvlist_t *dev_to_remove)
{
 nvlist_t **newdev = ((void*)0);

 if (count > 1)
  newdev = kmem_alloc((count - 1) * sizeof (void *), KM_SLEEP);

 for (int i = 0, j = 0; i < count; i++) {
  if (dev[i] == dev_to_remove)
   continue;
  VERIFY(nvlist_dup(dev[i], &newdev[j++], KM_SLEEP) == 0);
 }

 VERIFY(nvlist_remove(config, name, DATA_TYPE_NVLIST_ARRAY) == 0);
 VERIFY(nvlist_add_nvlist_array(config, name, newdev, count - 1) == 0);

 for (int i = 0; i < count - 1; i++)
  nvlist_free(newdev[i]);

 if (count > 1)
  kmem_free(newdev, (count - 1) * sizeof (void *));
}
