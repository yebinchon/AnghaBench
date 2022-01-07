
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int vim_num_entries; int vim_entry_offset; int * vim_entries; TYPE_4__* vim_dn; int vim_spa; TYPE_1__* vim_phys; } ;
typedef TYPE_2__ vdev_indirect_mapping_t ;
typedef int vdev_indirect_mapping_entry_phys_t ;
typedef int uint64_t ;
typedef int off_t ;
struct TYPE_7__ {int dn_datablkszsec; } ;
struct TYPE_5__ {int vimp_num_entries; } ;


 int SPA_MINBLOCKSHIFT ;
 int dnode_read (int ,TYPE_4__*,int,int *,int) ;
 int free (int *) ;
 int * malloc (int) ;

__attribute__((used)) static vdev_indirect_mapping_entry_phys_t *
vdev_indirect_mapping_entry(vdev_indirect_mapping_t *vim, uint64_t index)
{
 uint64_t size;
 off_t offset = 0;
 int rc;

 if (vim->vim_phys->vimp_num_entries == 0)
  return (((void*)0));

 if (vim->vim_entries == ((void*)0)) {
  uint64_t bsize;

  bsize = vim->vim_dn->dn_datablkszsec << SPA_MINBLOCKSHIFT;
  size = vim->vim_phys->vimp_num_entries *
      sizeof (*vim->vim_entries);
  if (size > bsize) {
   size = bsize / sizeof (*vim->vim_entries);
   size *= sizeof (*vim->vim_entries);
  }
  vim->vim_entries = malloc(size);
  if (vim->vim_entries == ((void*)0))
   return (((void*)0));
  vim->vim_num_entries = size / sizeof (*vim->vim_entries);
  offset = index * sizeof (*vim->vim_entries);
 }


 if (offset == 0) {
  if (index >= vim->vim_entry_offset &&
      index <= vim->vim_entry_offset + vim->vim_num_entries) {
   index -= vim->vim_entry_offset;
   return (&vim->vim_entries[index]);
  }
  offset = index * sizeof (*vim->vim_entries);
 }

 vim->vim_entry_offset = index;
 size = vim->vim_num_entries * sizeof (*vim->vim_entries);
 rc = dnode_read(vim->vim_spa, vim->vim_dn, offset, vim->vim_entries,
     size);
 if (rc != 0) {

  free(vim->vim_entries);
  vim->vim_entries = ((void*)0);
  return (((void*)0));
 }
 index -= vim->vim_entry_offset;
 return (&vim->vim_entries[index]);
}
