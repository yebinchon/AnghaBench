#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/  fs; int /*<<< orphan*/  pool; } ;
typedef  TYPE_1__ trail_t ;
struct TYPE_20__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_mergeinfo_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;
struct TYPE_21__ {int /*<<< orphan*/  name; int /*<<< orphan*/ * id; } ;
typedef  TYPE_3__ svn_fs_dirent_t ;
struct TYPE_22__ {scalar_t__ apr_err; } ;
typedef  TYPE_4__ svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct get_mergeinfo_data_and_entries_baton {int /*<<< orphan*/  children_atop_mergeinfo_trees; int /*<<< orphan*/  receiver_baton; int /*<<< orphan*/  node_path; int /*<<< orphan*/  (* receiver ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/ * node; } ;
typedef  int /*<<< orphan*/  dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int apr_int64_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SVN_ERR_FS_CORRUPT ; 
 scalar_t__ SVN_ERR_MERGEINFO_PARSE_ERROR ; 
 TYPE_4__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_MERGEINFO ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 TYPE_4__* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__*,int*,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC18 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC26(void *baton, trail_t *trail)
{
  struct get_mergeinfo_data_and_entries_baton *args = baton;
  dag_node_t *node = args->node;
  apr_hash_t *entries;
  apr_hash_index_t *hi;
  apr_pool_t *iterpool = FUNC24(trail->pool);
  apr_pool_t *children_pool =
    FUNC5(args->children_atop_mergeinfo_trees);

  FUNC1(FUNC17(node) == svn_node_dir);

  FUNC0(FUNC12(&entries, node, trail, trail->pool));
  for (hi = FUNC3(trail->pool, entries); hi; hi = FUNC4(hi))
    {
      void *val;
      svn_fs_dirent_t *dirent;
      const svn_fs_id_t *child_id;
      dag_node_t *child_node;
      svn_boolean_t has_mergeinfo;
      apr_int64_t kid_count;

      FUNC23(iterpool);
      FUNC6(hi, NULL, NULL, &val);
      dirent = val;
      child_id = dirent->id;

      /* Get the node for this child. */
      FUNC0(FUNC15(&child_node, trail->fs, child_id,
                                        trail, iterpool));

      /* Query the child node's mergeinfo stats. */
      FUNC0(FUNC14(&has_mergeinfo, &kid_count,
                                                   child_node, trail,
                                                   iterpool));

      /* If the child has mergeinfo, add it to the result catalog. */
      if (has_mergeinfo)
        {
          apr_hash_t *plist;
          svn_mergeinfo_t child_mergeinfo;
          svn_string_t *pval;
          svn_error_t *err;

          FUNC0(FUNC16(&plist, child_node,
                                                trail, iterpool));
          pval = FUNC20(plist, SVN_PROP_MERGEINFO);
          if (! pval)
            {
              svn_string_t *id_str = FUNC18(child_id,
                                                             iterpool);
              return FUNC10(SVN_ERR_FS_CORRUPT, NULL,
                                       FUNC2("Node-revision '%s' claims to have "
                                         "mergeinfo but doesn't"),
                                       id_str->data);
            }
          /* Issue #3896: If syntactically invalid mergeinfo is present on
             CHILD_NODE then treat it as if no mergeinfo is present rather
             than raising a parse error. */
          err = FUNC22(&child_mergeinfo, pval->data,
                                    iterpool);
          if (err)
            {
              if (err->apr_err == SVN_ERR_MERGEINFO_PARSE_ERROR)
                FUNC9(err);
              else
                return FUNC11(err);
            }
          else
            {
              FUNC0(args->receiver(FUNC19(args->node_path,
                                                      dirent->name,
                                                      iterpool),
                                     child_mergeinfo,
                                     args->receiver_baton,
                                     iterpool));
            }
        }

      /* If the child has descendants with mergeinfo -- that is, if
         the count of descendants beneath it carrying mergeinfo, not
         including itself, is non-zero -- then add it to the
         children_atop_mergeinfo_trees hash to be crawled later. */
      if ((kid_count - (has_mergeinfo ? 1 : 0)) > 0)
        {
          if (FUNC17(child_node) != svn_node_dir)
            {
              svn_string_t *id_str = FUNC18(child_id,
                                                             iterpool);
              return FUNC10(SVN_ERR_FS_CORRUPT, NULL,
                                       FUNC2("Node-revision '%s' claims to sit "
                                         "atop a tree containing mergeinfo "
                                         "but is not a directory"),
                                       id_str->data);
            }
          FUNC21(args->children_atop_mergeinfo_trees,
                        FUNC7(children_pool, dirent->name),
                        FUNC13(child_node, children_pool));
        }
    }

  FUNC25(iterpool);
  return SVN_NO_ERROR;
}