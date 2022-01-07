
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_9__ {TYPE_3__* conflicted_range; int target_abspath; int was_last_range; } ;
typedef TYPE_4__ svn_client__conflict_report_t ;
typedef int apr_pool_t ;
struct TYPE_8__ {TYPE_2__* loc2; TYPE_1__* loc1; } ;
struct TYPE_7__ {scalar_t__ rev; } ;
struct TYPE_6__ {scalar_t__ rev; } ;


 int SVN_ERR_WC_FOUND_CONFLICT ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int assert (int) ;
 scalar_t__ svn_dirent_is_absolute (int ) ;
 int svn_dirent_local_style (int ,int *) ;
 int * svn_error_createf (int ,int *,int ,scalar_t__,scalar_t__,int ) ;

svn_error_t *
svn_client__make_merge_conflict_error(svn_client__conflict_report_t *report,
                                      apr_pool_t *scratch_pool)
{
  assert(!report || svn_dirent_is_absolute(report->target_abspath));

  if (report && ! report->was_last_range)
    {
      svn_error_t *err = svn_error_createf(SVN_ERR_WC_FOUND_CONFLICT, ((void*)0),
       _("One or more conflicts were produced while merging r%ld:%ld into\n"
         "'%s' --\n"
         "resolve all conflicts and rerun the merge to apply the remaining\n"
         "unmerged revisions"),
       report->conflicted_range->loc1->rev, report->conflicted_range->loc2->rev,
       svn_dirent_local_style(report->target_abspath, scratch_pool));
      assert(report->conflicted_range->loc1->rev != report->conflicted_range->loc2->rev);
      return err;
    }
  return SVN_NO_ERROR;
}
