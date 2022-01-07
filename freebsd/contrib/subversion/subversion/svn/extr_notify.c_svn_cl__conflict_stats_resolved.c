
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_wc_conflict_kind_t ;
struct TYPE_3__ {int tree_conflicts_resolved; int tree_conflicts; int prop_conflicts_resolved; int prop_conflicts; int text_conflicts_resolved; int text_conflicts; } ;
typedef TYPE_1__ svn_cl__conflict_stats_t ;


 int svn_hash_gets (int ,char const*) ;
 int svn_hash_sets (int ,char const*,int *) ;




void
svn_cl__conflict_stats_resolved(svn_cl__conflict_stats_t *conflict_stats,
                                const char *path_local,
                                svn_wc_conflict_kind_t conflict_kind)
{
  switch (conflict_kind)
    {
      case 129:
        if (svn_hash_gets(conflict_stats->text_conflicts, path_local))
          {
            svn_hash_sets(conflict_stats->text_conflicts, path_local, ((void*)0));
            conflict_stats->text_conflicts_resolved++;
          }
        break;
      case 130:
        if (svn_hash_gets(conflict_stats->prop_conflicts, path_local))
          {
            svn_hash_sets(conflict_stats->prop_conflicts, path_local, ((void*)0));
            conflict_stats->prop_conflicts_resolved++;
          }
        break;
      case 128:
        if (svn_hash_gets(conflict_stats->tree_conflicts, path_local))
          {
            svn_hash_sets(conflict_stats->tree_conflicts, path_local, ((void*)0));
            conflict_stats->tree_conflicts_resolved++;
          }
        break;
    }
}
