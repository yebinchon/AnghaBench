
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ bid; } ;
typedef TYPE_1__ svn_branch__state_t ;
typedef int apr_pool_t ;


 char* apr_psprintf (int *,char*,int) ;
 int atoi (scalar_t__) ;
 char* svn_branch__get_root_rrpath (TYPE_1__ const*,int *) ;
 char const* svn_relpath_join (char const*,char const*,int *) ;

__attribute__((used)) static const char *
branch_get_storage_root_rrpath(const svn_branch__state_t *branch,
                               apr_pool_t *result_pool)
{
  int top_branch_num = atoi(branch->bid + 1);
  const char *top_path = apr_psprintf(result_pool, "top%d", top_branch_num);
  const char *nested_path = svn_branch__get_root_rrpath(branch, result_pool);

  return svn_relpath_join(top_path, nested_path, result_pool);
}
