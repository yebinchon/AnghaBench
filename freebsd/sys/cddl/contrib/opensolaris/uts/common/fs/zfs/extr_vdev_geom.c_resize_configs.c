
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int nvlist_t ;


 int KM_SLEEP ;
 int kmem_free (int **,int) ;
 int ** kmem_zalloc (int,int ) ;

__attribute__((used)) static void
resize_configs(nvlist_t ***configs, uint64_t *count, uint64_t id)
{
 nvlist_t **new_configs;
 uint64_t i;

 if (id < *count)
  return;
 new_configs = kmem_zalloc((id + 1) * sizeof(nvlist_t *),
     KM_SLEEP);
 for (i = 0; i < *count; i++)
  new_configs[i] = (*configs)[i];
 if (*configs != ((void*)0))
  kmem_free(*configs, *count * sizeof(void *));
 *configs = new_configs;
 *count = id + 1;
}
