
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_8__ {int * gme_ds; int guid; } ;
typedef TYPE_1__ guid_map_entry_t ;
typedef int dsl_pool_t ;
typedef int dsl_dataset_t ;
typedef int avl_tree_t ;
struct TYPE_9__ {int ds_guid; } ;


 int ASSERT (int ) ;
 int FTAG ;
 int KM_SLEEP ;
 int avl_add (int *,TYPE_1__*) ;
 int dsl_dataset_hold_obj (int *,int ,TYPE_1__*,int **) ;
 int dsl_dataset_long_hold (int *,TYPE_1__*) ;
 TYPE_4__* dsl_dataset_phys (int *) ;
 int dsl_pool_hold (char const*,int ,int **) ;
 int dsl_pool_rele (int *,int ) ;
 TYPE_1__* kmem_alloc (int,int ) ;
 int kmem_free (TYPE_1__*,int) ;

__attribute__((used)) static int
add_ds_to_guidmap(const char *name, avl_tree_t *guid_map, uint64_t snapobj)
{
 dsl_pool_t *dp;
 dsl_dataset_t *snapds;
 guid_map_entry_t *gmep;
 int err;

 ASSERT(guid_map != ((void*)0));

 err = dsl_pool_hold(name, FTAG, &dp);
 if (err != 0)
  return (err);
 gmep = kmem_alloc(sizeof (*gmep), KM_SLEEP);
 err = dsl_dataset_hold_obj(dp, snapobj, gmep, &snapds);
 if (err == 0) {
  gmep->guid = dsl_dataset_phys(snapds)->ds_guid;
  gmep->gme_ds = snapds;
  avl_add(guid_map, gmep);
  dsl_dataset_long_hold(snapds, gmep);
 } else
  kmem_free(gmep, sizeof (*gmep));

 dsl_pool_rele(dp, FTAG);
 return (err);
}
