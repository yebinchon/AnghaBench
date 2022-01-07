
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int vibe ;
struct TYPE_13__ {TYPE_3__* vib_entries; TYPE_1__* vib_phys; int vib_object; int vib_objset; int vib_dbuf; } ;
typedef TYPE_2__ vdev_indirect_births_t ;
struct TYPE_14__ {scalar_t__ vibe_phys_birth_txg; scalar_t__ vibe_offset; } ;
typedef TYPE_3__ vdev_indirect_birth_entry_phys_t ;
typedef scalar_t__ uint64_t ;
typedef int dmu_tx_t ;
struct TYPE_12__ {int vib_count; } ;


 int ASSERT (int ) ;
 int KM_SLEEP ;
 int bcopy (TYPE_3__*,TYPE_3__*,scalar_t__) ;
 int dmu_buf_will_dirty (int ,int *) ;
 int dmu_tx_is_syncing (int *) ;
 int dmu_tx_pool (int *) ;
 int dmu_write (int ,int ,scalar_t__,int,TYPE_3__*,int *) ;
 int dsl_pool_sync_context (int ) ;
 TYPE_3__* kmem_alloc (scalar_t__,int ) ;
 int kmem_free (TYPE_3__*,scalar_t__) ;
 scalar_t__ vdev_indirect_births_size_impl (TYPE_2__*) ;
 int vdev_indirect_births_verify (TYPE_2__*) ;

void
vdev_indirect_births_add_entry(vdev_indirect_births_t *vib,
    uint64_t max_offset, uint64_t txg, dmu_tx_t *tx)
{
 vdev_indirect_birth_entry_phys_t vibe;
 uint64_t old_size;
 uint64_t new_size;
 vdev_indirect_birth_entry_phys_t *new_entries;

 ASSERT(dmu_tx_is_syncing(tx));
 ASSERT(dsl_pool_sync_context(dmu_tx_pool(tx)));
 ASSERT(vdev_indirect_births_verify(vib));

 dmu_buf_will_dirty(vib->vib_dbuf, tx);

 vibe.vibe_offset = max_offset;
 vibe.vibe_phys_birth_txg = txg;

 old_size = vdev_indirect_births_size_impl(vib);
 dmu_write(vib->vib_objset, vib->vib_object, old_size, sizeof (vibe),
     &vibe, tx);
 vib->vib_phys->vib_count++;
 new_size = vdev_indirect_births_size_impl(vib);

 new_entries = kmem_alloc(new_size, KM_SLEEP);
 if (old_size > 0) {
  bcopy(vib->vib_entries, new_entries, old_size);
  kmem_free(vib->vib_entries, old_size);
 }
 new_entries[vib->vib_phys->vib_count - 1] = vibe;
 vib->vib_entries = new_entries;
}
