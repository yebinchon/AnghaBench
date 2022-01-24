#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_node_kind_t ;
struct TYPE_4__ {scalar_t__ kind; int /*<<< orphan*/  name; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ svn_fs_dirent_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_depth_t ;
struct context {int /*<<< orphan*/  ignore_ancestry; int /*<<< orphan*/  source_root; int /*<<< orphan*/  target_root; } ;
typedef  int /*<<< orphan*/  apr_ssize_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC3 (struct context*,void*,int /*<<< orphan*/ ,char const*,char const*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  change_dir_prop ; 
 int /*<<< orphan*/  FUNC10 (struct context*,void*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct context*,char const*,char const*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct context*,void*,int /*<<< orphan*/ ,char const*,char const*,char const*,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_depth_immediates ; 
 scalar_t__ svn_depth_infinity ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,void const*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 char* FUNC19 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC20(struct context *c,
           void *dir_baton,
           svn_depth_t depth,
           const char *source_path,
           const char *target_path,
           const char *edit_path,
           apr_pool_t *pool)
{
  apr_hash_t *s_entries = 0, *t_entries = 0;
  apr_hash_index_t *hi;
  apr_pool_t *subpool;

  FUNC2(target_path);

  /* Compare the property lists.  */
  FUNC1(FUNC11(c, source_path, target_path,
                          change_dir_prop, dir_baton, pool));

  /* Get the list of entries in each of source and target.  */
  FUNC1(FUNC14(&t_entries, c->target_root,
                             target_path, pool));
  if (source_path)
    FUNC1(FUNC14(&s_entries, c->source_root,
                               source_path, pool));

  /* Make a subpool for local allocations. */
  subpool = FUNC17(pool);

  /* Loop over the hash of entries in the target, searching for its
     partner in the source.  If we find the matching partner entry,
     use editor calls to replace the one in target with a new version
     if necessary, then remove that entry from the source entries
     hash.  If we can't find a related node in the source, we use
     editor calls to add the entry as a new item in the target.
     Having handled all the entries that exist in target, any entries
     still remaining the source entries hash represent entries that no
     longer exist in target.  Use editor calls to delete those entries
     from the target tree. */
  for (hi = FUNC4(pool, t_entries); hi; hi = FUNC6(hi))
    {
      const void *key = FUNC7(hi);
      apr_ssize_t klen = FUNC8(hi);
      const svn_fs_dirent_t *t_entry = FUNC9(hi);
      const svn_fs_dirent_t *s_entry;
      const char *t_fullpath;
      const char *e_fullpath;
      const char *s_fullpath;
      svn_node_kind_t tgt_kind;

      /* Clear out our subpool for the next iteration... */
      FUNC16(subpool);

      tgt_kind = t_entry->kind;
      t_fullpath = FUNC19(target_path, t_entry->name, subpool);
      e_fullpath = FUNC19(edit_path, t_entry->name, subpool);

      /* Can we find something with the same name in the source
         entries hash? */
      if (s_entries && ((s_entry = FUNC5(s_entries, key, klen)) != 0))
        {
          svn_node_kind_t src_kind;

          s_fullpath = FUNC19(source_path, t_entry->name, subpool);
          src_kind = s_entry->kind;

          if (depth == svn_depth_infinity
              || src_kind != svn_node_dir
              || (src_kind == svn_node_dir
                  && depth == svn_depth_immediates))
            {
              /* Use svn_fs_compare_ids() to compare our current
                 source and target ids.

                    0: means they are the same id, and this is a noop.
                   -1: means they are unrelated, so we have to delete the
                       old one and add the new one.
                    1: means the nodes are related through ancestry, so go
                       ahead and do the replace directly.  */
              int distance = FUNC13(s_entry->id, t_entry->id);
              if (distance == 0)
                {
                  /* no-op */
                }
              else if ((src_kind != tgt_kind)
                       || ((distance == -1) && (! c->ignore_ancestry)))
                {
                  FUNC1(FUNC10(c, dir_baton, e_fullpath, subpool));
                  FUNC1(FUNC3(c, dir_baton,
                                          FUNC0(depth),
                                          t_fullpath, e_fullpath, tgt_kind,
                                          subpool));
                }
              else
                {
                  FUNC1(FUNC12(c, dir_baton,
                                              FUNC0(depth),
                                              s_fullpath, t_fullpath,
                                              e_fullpath, tgt_kind,
                                              subpool));
                }
            }

          /*  Remove the entry from the source_hash. */
          FUNC15(s_entries, key, NULL);
        }
      else
        {
          if (depth == svn_depth_infinity
              || tgt_kind != svn_node_dir
              || (tgt_kind == svn_node_dir
                  && depth == svn_depth_immediates))
            {
              FUNC1(FUNC3(c, dir_baton,
                                      FUNC0(depth),
                                      t_fullpath, e_fullpath, tgt_kind,
                                      subpool));
            }
        }
    }

  /* All that is left in the source entries hash are things that need
     to be deleted.  Delete them.  */
  if (s_entries)
    {
      for (hi = FUNC4(pool, s_entries); hi; hi = FUNC6(hi))
        {
          const svn_fs_dirent_t *s_entry = FUNC9(hi);
          const char *e_fullpath;
          svn_node_kind_t src_kind;

          /* Clear out our subpool for the next iteration... */
          FUNC16(subpool);

          src_kind = s_entry->kind;
          e_fullpath = FUNC19(edit_path, s_entry->name, subpool);

          /* Do we actually want to delete the dir if we're non-recursive? */
          if (depth == svn_depth_infinity
              || src_kind != svn_node_dir
              || (src_kind == svn_node_dir
                  && depth == svn_depth_immediates))
            {
              FUNC1(FUNC10(c, dir_baton, e_fullpath, subpool));
            }
        }
    }

  /* Destroy local allocation subpool. */
  FUNC18(subpool);

  return SVN_NO_ERROR;
}