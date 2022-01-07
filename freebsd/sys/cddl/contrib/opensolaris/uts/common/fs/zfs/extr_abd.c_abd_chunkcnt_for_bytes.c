
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t P2ROUNDUP (size_t,size_t) ;
 size_t zfs_abd_chunk_size ;

__attribute__((used)) static inline size_t
abd_chunkcnt_for_bytes(size_t size)
{
 return (P2ROUNDUP(size, zfs_abd_chunk_size) / zfs_abd_chunk_size);
}
