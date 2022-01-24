#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_revnum_t ;
struct TYPE_11__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct node_state_t {char const* local_abspath; int /*<<< orphan*/ * pool; int /*<<< orphan*/ * baton; struct node_state_t* parent; void* right_src; void* left_src; void* relpath; void* skip_children; void* skip; } ;
struct diff_baton {TYPE_7__* processor; int /*<<< orphan*/  db; struct node_state_t* cur; int /*<<< orphan*/  anchor_abspath; int /*<<< orphan*/ * pool; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_12__ {TYPE_1__* (* dir_opened ) (int /*<<< orphan*/ **,void**,void**,void*,void*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ; 
 scalar_t__ SVN_INVALID_REVNUM ; 
 TYPE_1__* SVN_NO_ERROR ; 
 void* TRUE ; 
 struct node_state_t* FUNC1 (int /*<<< orphan*/ *,int) ; 
 char const* FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ **,void**,void**,void*,void*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC4 (scalar_t__,int /*<<< orphan*/ *) ; 
 char* FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char const*,char const*,int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 TYPE_1__* FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC12(struct diff_baton *eb,
             const char *local_abspath,
             svn_boolean_t recursive_skip,
             apr_pool_t *scratch_pool)
{
  struct node_state_t *ns;
  apr_pool_t *ns_pool;
  if (!eb->cur)
    {
      const char *relpath;

      relpath = FUNC7(eb->anchor_abspath, local_abspath);
      if (! relpath)
        return SVN_NO_ERROR;

      /* Don't recurse on the anchor, as that might loop infinitely because
            svn_dirent_dirname("/",...)   -> "/"
            svn_dirent_dirname("C:/",...) -> "C:/" (Windows) */
      if (*relpath)
        FUNC0(FUNC12(eb,
                             FUNC5(local_abspath, scratch_pool),
                             FALSE,
                             scratch_pool));
    }
  else if (FUNC6(eb->cur->local_abspath, local_abspath, NULL))
    FUNC0(FUNC12(eb, FUNC5(local_abspath, scratch_pool),
                         FALSE,
                         scratch_pool));
  else
    return SVN_NO_ERROR;

  if (eb->cur && eb->cur->skip_children)
    return SVN_NO_ERROR;

  ns_pool = FUNC10(eb->cur ? eb->cur->pool : eb->pool);
  ns = FUNC1(ns_pool, sizeof(*ns));

  ns->pool = ns_pool;
  ns->local_abspath = FUNC2(ns_pool, local_abspath);
  ns->relpath = FUNC7(eb->anchor_abspath, ns->local_abspath);
  ns->parent = eb->cur;
  eb->cur = ns;

  if (recursive_skip)
    {
      ns->skip = TRUE;
      ns->skip_children = TRUE;
      return SVN_NO_ERROR;
    }

  {
    svn_revnum_t revision;
    svn_error_t *err;

    err = FUNC11(NULL, NULL, &revision, NULL, NULL, NULL,
                                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                   NULL, NULL, NULL,
                                   eb->db, local_abspath,
                                   scratch_pool, scratch_pool);

    if (err)
      {
        if (err->apr_err != SVN_ERR_WC_PATH_NOT_FOUND)
          return FUNC9(err);
        FUNC8(err);

        revision = 0; /* Use original revision? */
      }
    ns->left_src = FUNC4(revision, ns->pool);
    ns->right_src = FUNC4(SVN_INVALID_REVNUM, ns->pool);

    FUNC0(eb->processor->dir_opened(&ns->baton, &ns->skip,
                                      &ns->skip_children,
                                      ns->relpath,
                                      ns->left_src,
                                      ns->right_src,
                                      NULL /* copyfrom_source */,
                                      ns->parent ? ns->parent->baton : NULL,
                                      eb->processor,
                                      ns->pool, scratch_pool));
  }

  return SVN_NO_ERROR;
}