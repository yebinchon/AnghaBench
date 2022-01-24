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
struct TYPE_19__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/ * svn_mergeinfo_t ;
typedef  scalar_t__ svn_mergeinfo_inheritance_t ;
struct TYPE_20__ {int /*<<< orphan*/  rev; } ;
typedef  TYPE_2__ svn_fs_root_t ;
struct TYPE_21__ {scalar_t__ apr_err; } ;
typedef  TYPE_3__ svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_22__ {int /*<<< orphan*/  node; struct TYPE_22__* parent; } ;
typedef  TYPE_4__ parent_path_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_CORRUPT ; 
 scalar_t__ SVN_ERR_MERGEINFO_PARSE_ERROR ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 TYPE_3__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_MERGEINFO ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__**,TYPE_2__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC9 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ svn_mergeinfo_explicit ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_mergeinfo_nearest_ancestor ; 
 TYPE_3__* FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC15(svn_mergeinfo_t *mergeinfo,
                                svn_fs_root_t *rev_root,
                                const char *path,
                                svn_mergeinfo_inheritance_t inherit,
                                svn_boolean_t adjust_inherited_mergeinfo,
                                apr_pool_t *result_pool,
                                apr_pool_t *scratch_pool)
{
  parent_path_t *parent_path, *nearest_ancestor;
  apr_hash_t *proplist;
  svn_string_t *mergeinfo_string;

  path = FUNC9(path, scratch_pool);

  FUNC0(FUNC2(&parent_path, rev_root, path, 0, FALSE, scratch_pool));

  if (inherit == svn_mergeinfo_nearest_ancestor && ! parent_path->parent)
    return SVN_NO_ERROR;

  if (inherit == svn_mergeinfo_nearest_ancestor)
    nearest_ancestor = parent_path->parent;
  else
    nearest_ancestor = parent_path;

  while (TRUE)
    {
      svn_boolean_t has_mergeinfo;

      FUNC0(FUNC11(&has_mergeinfo,
                                           nearest_ancestor->node));
      if (has_mergeinfo)
        break;

      /* No need to loop if we're looking for explicit mergeinfo. */
      if (inherit == svn_mergeinfo_explicit)
        {
          return SVN_NO_ERROR;
        }

      nearest_ancestor = nearest_ancestor->parent;

      /* Run out?  There's no mergeinfo. */
      if (!nearest_ancestor)
        {
          return SVN_NO_ERROR;
        }
    }

  FUNC0(FUNC10(&proplist, nearest_ancestor->node,
                                      scratch_pool));
  mergeinfo_string = FUNC12(proplist, SVN_PROP_MERGEINFO);
  if (!mergeinfo_string)
    return FUNC6
      (SVN_ERR_FS_CORRUPT, NULL,
       FUNC1("Node-revision '%s@%ld' claims to have mergeinfo but doesn't"),
       FUNC3(nearest_ancestor, scratch_pool), rev_root->rev);

  /* Parse the mergeinfo; store the result in *MERGEINFO. */
  {
    /* Issue #3896: If a node has syntactically invalid mergeinfo, then
       treat it as if no mergeinfo is present rather than raising a parse
       error. */
    svn_error_t *err = FUNC14(mergeinfo,
                                           mergeinfo_string->data,
                                           result_pool);
    if (err)
      {
        if (err->apr_err == SVN_ERR_MERGEINFO_PARSE_ERROR)
          {
            FUNC5(err);
            err = NULL;
            *mergeinfo = NULL;
          }
        return FUNC7(err);
      }
  }

  /* If our nearest ancestor is the very path we inquired about, we
     can return the mergeinfo results directly.  Otherwise, we're
     inheriting the mergeinfo, so we need to a) remove non-inheritable
     ranges and b) telescope the merged-from paths. */
  if (adjust_inherited_mergeinfo && (nearest_ancestor != parent_path))
    {
      svn_mergeinfo_t tmp_mergeinfo;

      FUNC0(FUNC13(&tmp_mergeinfo, *mergeinfo,
                                         NULL, SVN_INVALID_REVNUM,
                                         SVN_INVALID_REVNUM, TRUE,
                                         scratch_pool, scratch_pool));
      FUNC0(FUNC8(mergeinfo, tmp_mergeinfo,
                                             FUNC4(
                                               parent_path, nearest_ancestor,
                                               scratch_pool),
                                             result_pool));
    }

  return SVN_NO_ERROR;
}