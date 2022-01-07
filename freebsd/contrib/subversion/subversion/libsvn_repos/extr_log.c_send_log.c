
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_8__ {void* subtractive_merge; void* has_children; int member_0; } ;
typedef TYPE_1__ svn_repos_log_entry_t ;
typedef scalar_t__ svn_mergeinfo_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef void* svn_boolean_t ;
typedef int svn_bit_array__t ;
struct TYPE_9__ {int revision_receiver_baton; int (* revision_receiver ) (int ,TYPE_1__*,int *) ;TYPE_3__* path_change_receiver_baton; int path_change_receiver; } ;
typedef TYPE_2__ log_callbacks_t ;
struct TYPE_10__ {scalar_t__ found_rev_of_interest; struct TYPE_10__* inner_baton; int inner; scalar_t__ log_target_history_as_mergeinfo; int rev; } ;
typedef TYPE_3__ interesting_merge_baton_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 scalar_t__ apr_hash_count (scalar_t__) ;
 int fill_log_entry (TYPE_1__*,int ,int *,int const*,TYPE_2__ const*,int *) ;
 int interesting_merge ;
 int stub1 (int ,TYPE_1__*,int *) ;
 scalar_t__ svn_bit_array__get (int *,int ) ;
 int svn_bit_array__set (int *,int ,scalar_t__) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
send_log(svn_revnum_t rev,
         svn_fs_t *fs,
         svn_mergeinfo_t log_target_history_as_mergeinfo,
         svn_bit_array__t *nested_merges,
         svn_boolean_t subtractive_merge,
         svn_boolean_t handling_merged_revision,
         const apr_array_header_t *revprops,
         svn_boolean_t has_children,
         const log_callbacks_t *callbacks,
         apr_pool_t *pool)
{
  svn_repos_log_entry_t log_entry = { 0 };
  log_callbacks_t my_callbacks = *callbacks;

  interesting_merge_baton_t baton;






  if (handling_merged_revision
      && log_target_history_as_mergeinfo
      && apr_hash_count(log_target_history_as_mergeinfo))
    {
      baton.found_rev_of_interest = FALSE;
      baton.rev = rev;
      baton.log_target_history_as_mergeinfo = log_target_history_as_mergeinfo;
      baton.inner = callbacks->path_change_receiver;
      baton.inner_baton = callbacks->path_change_receiver_baton;

      my_callbacks.path_change_receiver = interesting_merge;
      my_callbacks.path_change_receiver_baton = &baton;
      callbacks = &my_callbacks;
    }
  else
    {
      baton.found_rev_of_interest = TRUE;
    }

  SVN_ERR(fill_log_entry(&log_entry, rev, fs, revprops, callbacks, pool));
  log_entry.has_children = has_children;
  log_entry.subtractive_merge = subtractive_merge;



  if (baton.found_rev_of_interest)
    {
      apr_pool_t *scratch_pool;


      if (nested_merges && handling_merged_revision)
        {
          if (svn_bit_array__get(nested_merges, rev))
            {

              return SVN_NO_ERROR;
            }
          else
            {



              svn_bit_array__set(nested_merges, rev, TRUE);
            }
        }



      scratch_pool = svn_pool_create(pool);
      SVN_ERR(callbacks->revision_receiver(callbacks->revision_receiver_baton,
                                           &log_entry, scratch_pool));
      svn_pool_destroy(scratch_pool);
    }

  return SVN_NO_ERROR;
}
