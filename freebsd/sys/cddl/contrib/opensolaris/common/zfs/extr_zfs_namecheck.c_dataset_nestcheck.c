
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ get_dataset_depth (char const*) ;
 scalar_t__ zfs_max_dataset_nesting ;

int
dataset_nestcheck(const char *path)
{
 return ((get_dataset_depth(path) < zfs_max_dataset_nesting) ? 0 : -1);
}
