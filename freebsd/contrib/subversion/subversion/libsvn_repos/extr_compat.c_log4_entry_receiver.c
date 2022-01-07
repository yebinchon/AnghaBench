
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int subtractive_merge; int non_inheritable; int has_children; int revprops; int revision; } ;
typedef TYPE_1__ svn_repos_log_entry_t ;
struct TYPE_8__ {int subtractive_merge; int non_inheritable; int * changed_paths2; int has_children; int revprops; int revision; int * changed_paths; } ;
typedef TYPE_2__ svn_log_entry_t ;
typedef int svn_error_t ;
struct TYPE_9__ {int * changes; int changes_pool; int inner_baton; int (* inner ) (int ,TYPE_2__*,int *) ;} ;
typedef TYPE_3__ log_entry_receiver_baton_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (int ,TYPE_2__*,int *) ;
 TYPE_2__* svn_log_entry_create (int *) ;
 int svn_pool_clear (int ) ;

__attribute__((used)) static svn_error_t *
log4_entry_receiver(void *baton,
                    svn_repos_log_entry_t *log_entry,
                    apr_pool_t *scratch_pool)
{
  log_entry_receiver_baton_t *b = baton;
  svn_log_entry_t *entry = svn_log_entry_create(scratch_pool);


  entry->changed_paths = b->changes;
  entry->revision = log_entry->revision;
  entry->revprops = log_entry->revprops;
  entry->has_children = log_entry->has_children;
  entry->changed_paths2 = b->changes;
  entry->non_inheritable = log_entry->non_inheritable;
  entry->subtractive_merge = log_entry->subtractive_merge;


  SVN_ERR(b->inner(b->inner_baton, entry, scratch_pool));


  svn_pool_clear(b->changes_pool);
  b->changes = ((void*)0);

  return SVN_NO_ERROR;
}
