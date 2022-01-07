
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fs_type; } ;
typedef TYPE_1__ svn_fs_info_placeholder_t ;
struct TYPE_6__ {void* (* info_fsap_dup ) (void const*,int *) ;} ;
typedef TYPE_2__ fs_library_vtable_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 void* apr_pmemdup (int *,TYPE_1__ const*,int) ;
 int get_library_vtable (TYPE_2__**,int ,int *) ;
 void* stub1 (void const*,int *) ;

void *
svn_fs_info_dup(const void *info_void,
                apr_pool_t *result_pool,
                apr_pool_t *scratch_pool)
{
  const svn_fs_info_placeholder_t *info = info_void;
  fs_library_vtable_t *vtable;

  SVN_ERR(get_library_vtable(&vtable, info->fs_type, scratch_pool));

  if (vtable->info_fsap_dup)
    return vtable->info_fsap_dup(info_void, result_pool);
  else
    return apr_pmemdup(result_pool, info, sizeof(*info));
}
