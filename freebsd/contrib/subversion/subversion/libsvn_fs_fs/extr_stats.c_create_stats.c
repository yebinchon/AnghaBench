
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int by_extension; } ;
typedef TYPE_1__ svn_fs_fs__stats_t ;
typedef int apr_pool_t ;


 int apr_hash_make (int *) ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int initialize_largest_changes (TYPE_1__*,int,int *) ;

__attribute__((used)) static svn_fs_fs__stats_t *
create_stats(apr_pool_t *result_pool)
{
  svn_fs_fs__stats_t *stats = apr_pcalloc(result_pool, sizeof(*stats));

  initialize_largest_changes(stats, 64, result_pool);
  stats->by_extension = apr_hash_make(result_pool);

  return stats;
}
