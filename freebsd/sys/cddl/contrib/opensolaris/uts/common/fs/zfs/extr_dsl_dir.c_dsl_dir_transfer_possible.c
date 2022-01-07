
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int int64_t ;
typedef int dsl_dir_t ;
typedef int cred_t ;


 int ENOSPC ;
 int FALSE ;
 int SET_ERROR (int ) ;
 int ZFS_PROP_FILESYSTEM_LIMIT ;
 int ZFS_PROP_SNAPSHOT_LIMIT ;
 int * closest_common_ancestor (int *,int *) ;
 int dsl_dir_space_available (int *,int *,int ,int ) ;
 int dsl_fs_ss_limit_check (int *,int ,int ,int *,int *) ;
 int would_change (int *,int ,int *) ;

int
dsl_dir_transfer_possible(dsl_dir_t *sdd, dsl_dir_t *tdd,
    uint64_t fs_cnt, uint64_t ss_cnt, uint64_t space, cred_t *cr)
{
 dsl_dir_t *ancestor;
 int64_t adelta;
 uint64_t avail;
 int err;

 ancestor = closest_common_ancestor(sdd, tdd);
 adelta = would_change(sdd, -space, ancestor);
 avail = dsl_dir_space_available(tdd, ancestor, adelta, FALSE);
 if (avail < space)
  return (SET_ERROR(ENOSPC));

 err = dsl_fs_ss_limit_check(tdd, fs_cnt, ZFS_PROP_FILESYSTEM_LIMIT,
     ancestor, cr);
 if (err != 0)
  return (err);
 err = dsl_fs_ss_limit_check(tdd, ss_cnt, ZFS_PROP_SNAPSHOT_LIMIT,
     ancestor, cr);
 if (err != 0)
  return (err);

 return (0);
}
