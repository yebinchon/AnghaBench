
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_branch__state_t ;
typedef int apr_pool_t ;


 int branch_get_storage_root_rrpath (int const*,int *) ;
 char* svn_branch__get_path_by_eid (int const*,int,int *) ;
 char* svn_relpath_join (int ,char const*,int *) ;

__attribute__((used)) static const char *
branch_get_storage_rrpath_by_eid(const svn_branch__state_t *branch,
                                 int eid,
                                 apr_pool_t *result_pool)
{
  const char *path = svn_branch__get_path_by_eid(branch, eid, result_pool);
  const char *rrpath = ((void*)0);

  if (path)
    {
      rrpath = svn_relpath_join(branch_get_storage_root_rrpath(branch,
                                                               result_pool),
                                path, result_pool);
    }
  return rrpath;
}
