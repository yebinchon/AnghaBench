
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
struct TYPE_14__ {scalar_t__ nelts; } ;
typedef TYPE_2__ svn_rangelist_t ;
struct TYPE_15__ {int changed_paths2; scalar_t__ revision; } ;
typedef TYPE_3__ svn_log_entry_t ;
typedef int svn_error_t ;
struct TYPE_16__ {scalar_t__ pre_merge_mergeinfo; } ;
typedef TYPE_4__ svn_client__merge_path_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_17__ {int pool; int merged_ranges; TYPE_1__* target; int children_with_mergeinfo; int source_fspath; int operative_ranges; } ;
typedef TYPE_5__ log_noop_baton_t ;
typedef int apr_pool_t ;
typedef int apr_hash_index_t ;
struct TYPE_13__ {int abspath; } ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int * apr_hash_first (int *,int ) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 TYPE_4__* get_child_with_mergeinfo (int ,char const*) ;
 int rangelist_merge_revision (int ,scalar_t__,int ) ;
 scalar_t__ strcmp (int ,char const*) ;
 int strlen (char const*) ;
 char* svn_dirent_dirname (char const*,int *) ;
 scalar_t__ svn_dirent_is_root (char const*,int ) ;
 char* svn_dirent_join (int ,char const*,int *) ;
 char* svn_fspath__dirname (char const*,int *) ;
 char* svn_fspath__skip_ancestor (int ,char const*) ;
 TYPE_2__* svn_hash_gets (scalar_t__,char const*) ;
 TYPE_2__* svn_rangelist__initialize (scalar_t__,scalar_t__,scalar_t__,int *) ;
 int svn_rangelist_intersect (TYPE_2__**,TYPE_2__*,TYPE_2__*,scalar_t__,int *) ;

__attribute__((used)) static svn_error_t *
log_noop_revs(void *baton,
              svn_log_entry_t *log_entry,
              apr_pool_t *scratch_pool)
{
  log_noop_baton_t *log_gap_baton = baton;
  apr_hash_index_t *hi;
  svn_revnum_t revision;
  svn_boolean_t log_entry_rev_required = FALSE;

  revision = log_entry->revision;



  if (!log_entry->changed_paths2)
    return SVN_NO_ERROR;


  SVN_ERR(rangelist_merge_revision(log_gap_baton->operative_ranges,
                                   revision,
                                   log_gap_baton->pool));





  for (hi = apr_hash_first(scratch_pool, log_entry->changed_paths2);
       hi;
       hi = apr_hash_next(hi))
    {
      const char *fspath = apr_hash_this_key(hi);
      const char *rel_path;
      const char *cwmi_abspath;
      svn_rangelist_t *paths_explicit_rangelist = ((void*)0);
      svn_boolean_t mergeinfo_inherited = FALSE;




      rel_path = svn_fspath__skip_ancestor(log_gap_baton->source_fspath,
                                           fspath);


      if (rel_path == ((void*)0))
        continue;
      cwmi_abspath = svn_dirent_join(log_gap_baton->target->abspath,
                                     rel_path, scratch_pool);


      while (!log_entry_rev_required)
        {
          svn_client__merge_path_t *child = get_child_with_mergeinfo(
            log_gap_baton->children_with_mergeinfo, cwmi_abspath);

          if (child && child->pre_merge_mergeinfo)
            {


              paths_explicit_rangelist =
                            svn_hash_gets(child->pre_merge_mergeinfo, fspath);
              break;
            }

          if (cwmi_abspath[0] == '\0'
              || svn_dirent_is_root(cwmi_abspath, strlen(cwmi_abspath))
              || strcmp(log_gap_baton->target->abspath, cwmi_abspath) == 0)
            {

              break;
            }


          cwmi_abspath = svn_dirent_dirname(cwmi_abspath, scratch_pool);
          fspath = svn_fspath__dirname(fspath, scratch_pool);


          mergeinfo_inherited = TRUE;
        }

      if (paths_explicit_rangelist)
        {
          svn_rangelist_t *intersecting_range;
          svn_rangelist_t *rangelist;

          rangelist = svn_rangelist__initialize(revision - 1, revision, TRUE,
                                                scratch_pool);



          SVN_ERR(svn_rangelist_intersect(&intersecting_range,
                                          paths_explicit_rangelist,
                                          rangelist,
                                          mergeinfo_inherited, scratch_pool));

          if (intersecting_range->nelts == 0)
            log_entry_rev_required = TRUE;
        }
      else
        {
          log_entry_rev_required = TRUE;
        }
    }

  if (!log_entry_rev_required)
    SVN_ERR(rangelist_merge_revision(log_gap_baton->merged_ranges,
                                     revision,
                                     log_gap_baton->pool));

  return SVN_NO_ERROR;
}
