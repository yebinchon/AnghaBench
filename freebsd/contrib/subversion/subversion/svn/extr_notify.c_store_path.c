
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct notify_baton {TYPE_1__* conflict_stats; } ;
typedef int apr_hash_t ;
struct TYPE_2__ {int stats_pool; } ;


 int apr_pstrdup (int ,char const*) ;
 int svn_hash_sets (int *,int ,char*) ;

__attribute__((used)) static void
store_path(struct notify_baton *nb, apr_hash_t *hash, const char *path)
{
  svn_hash_sets(hash, apr_pstrdup(nb->conflict_stats->stats_pool, path), "");
}
