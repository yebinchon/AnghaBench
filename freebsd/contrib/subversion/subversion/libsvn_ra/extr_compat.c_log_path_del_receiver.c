
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int revision; int changed_paths2; } ;
typedef TYPE_1__ svn_log_entry_t ;
struct TYPE_6__ {char action; } ;
typedef TYPE_2__ svn_log_changed_path_t ;
typedef int svn_error_t ;
struct TYPE_7__ {int revision_deleted; int path; } ;
typedef TYPE_3__ log_path_del_rev_t ;
typedef int apr_pool_t ;
typedef int apr_hash_index_t ;


 int * SVN_NO_ERROR ;
 int * apr_hash_first (int *,int ) ;
 int * apr_hash_next (int *) ;
 int apr_hash_this (int *,void*,int *,void**) ;
 scalar_t__ svn_path_compare_paths (int ,char*) ;

__attribute__((used)) static svn_error_t *
log_path_del_receiver(void *baton,
                      svn_log_entry_t *log_entry,
                      apr_pool_t *pool)
{
  log_path_del_rev_t *b = baton;
  apr_hash_index_t *hi;


  if (! log_entry->changed_paths2)
    return SVN_NO_ERROR;

  for (hi = apr_hash_first(pool, log_entry->changed_paths2);
       hi != ((void*)0);
       hi = apr_hash_next(hi))
    {
      void *val;
      char *path;
      svn_log_changed_path_t *log_item;

      apr_hash_this(hi, (void *) &path, ((void*)0), &val);
      log_item = val;
      if (svn_path_compare_paths(b->path, path) == 0
          && (log_item->action == 'D' || log_item->action == 'R'))
        {

          b->revision_deleted = log_entry->revision;
          break;
        }
    }
  return SVN_NO_ERROR;
}
