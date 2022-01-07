
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int abd_t ;


 int ASSERT0 (int) ;
 int B_FALSE ;
 int * abd_alloc_for_io (int,int ) ;
 int abd_iterate_func (int *,int ,int,int ,int *) ;
 int vdev_initialize_block_fill ;
 int zfs_initialize_chunk_size ;

__attribute__((used)) static abd_t *
vdev_initialize_block_alloc()
{

 abd_t *data = abd_alloc_for_io(zfs_initialize_chunk_size, B_FALSE);

 ASSERT0(zfs_initialize_chunk_size % sizeof (uint64_t));
 (void) abd_iterate_func(data, 0, zfs_initialize_chunk_size,
     vdev_initialize_block_fill, ((void*)0));

 return (data);
}
