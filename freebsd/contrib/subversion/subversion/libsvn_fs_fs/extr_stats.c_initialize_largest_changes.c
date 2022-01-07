
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_4__* largest_changes; } ;
typedef TYPE_2__ svn_fs_fs__stats_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
struct TYPE_7__ {int count; int min_size; TYPE_1__** changes; } ;
struct TYPE_5__ {int path; int revision; scalar_t__ size; } ;


 int SVN_INVALID_REVNUM ;
 void* apr_palloc (int *,int) ;
 TYPE_4__* apr_pcalloc (int *,int) ;
 int svn_stringbuf_create_ensure (int,int *) ;

__attribute__((used)) static void
initialize_largest_changes(svn_fs_fs__stats_t *stats,
                           apr_size_t count,
                           apr_pool_t *result_pool)
{
  apr_size_t i;

  stats->largest_changes = apr_pcalloc(result_pool,
                                       sizeof(*stats->largest_changes));
  stats->largest_changes->count = count;
  stats->largest_changes->min_size = 1;
  stats->largest_changes->changes
    = apr_palloc(result_pool, count * sizeof(*stats->largest_changes->changes));



  for (i = 0; i < count; ++i)
    stats->largest_changes->changes[i]
      = apr_palloc(result_pool, sizeof(**stats->largest_changes->changes));


  for (i = 0; i < count; ++i)
    {
      stats->largest_changes->changes[i]->size = 0;
      stats->largest_changes->changes[i]->revision = SVN_INVALID_REVNUM;
      stats->largest_changes->changes[i]->path
        = svn_stringbuf_create_ensure(1024, result_pool);
    }
}
