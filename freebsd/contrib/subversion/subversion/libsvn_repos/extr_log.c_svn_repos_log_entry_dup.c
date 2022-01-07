
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ revprops; } ;
typedef TYPE_1__ svn_repos_log_entry_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_pmemdup (int *,TYPE_1__ const*,int) ;
 scalar_t__ svn_prop_hash_dup (scalar_t__,int *) ;

svn_repos_log_entry_t *
svn_repos_log_entry_dup(const svn_repos_log_entry_t *log_entry,
                        apr_pool_t *result_pool)
{
  svn_repos_log_entry_t *new_entry = apr_pmemdup(result_pool, log_entry,
                                                sizeof(*new_entry));

  if (log_entry->revprops)
    new_entry->revprops = svn_prop_hash_dup(log_entry->revprops, result_pool);

  return new_entry;
}
