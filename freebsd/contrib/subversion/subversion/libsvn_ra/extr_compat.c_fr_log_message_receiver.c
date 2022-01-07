
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int revision; int changed_paths2; int revprops; } ;
typedef TYPE_1__ svn_log_entry_t ;
typedef int svn_error_t ;
struct rev {int props; struct rev* next; int path; int revision; } ;
struct fr_log_message_baton {int pool; int path; int copyrev; int action; struct rev* eldest; } ;
typedef int apr_pool_t ;


 struct rev* apr_palloc (int ,int) ;
 int * prev_log_path (int *,int *,int *,int ,int ,int ,int ,int ) ;
 int svn_node_file ;
 int svn_prop_hash_dup (int ,int ) ;

__attribute__((used)) static svn_error_t *
fr_log_message_receiver(void *baton,
                        svn_log_entry_t *log_entry,
                        apr_pool_t *pool)
{
  struct fr_log_message_baton *lmb = baton;
  struct rev *rev;

  rev = apr_palloc(lmb->pool, sizeof(*rev));
  rev->revision = log_entry->revision;
  rev->path = lmb->path;
  rev->next = lmb->eldest;
  lmb->eldest = rev;


  rev->props = svn_prop_hash_dup(log_entry->revprops, lmb->pool);

  return prev_log_path(&lmb->path, &lmb->action,
                       &lmb->copyrev, log_entry->changed_paths2,
                       lmb->path, svn_node_file, log_entry->revision,
                       lmb->pool);
}
