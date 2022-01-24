#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc_conflict_version_t ;
struct TYPE_12__ {TYPE_4__* children; } ;
typedef  TYPE_5__ svn_skel_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_11__ {TYPE_3__* next; } ;
struct TYPE_10__ {TYPE_2__* next; int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct TYPE_9__ {TYPE_1__* next; int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct TYPE_8__ {int /*<<< orphan*/  next; int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_WC_CORRUPT ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__ const*) ; 
 int /*<<< orphan*/  node_kind_map ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC7 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char const*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC9(const svn_wc_conflict_version_t **version_info,
                       const svn_skel_t *skel,
                       apr_pool_t *result_pool,
                       apr_pool_t *scratch_pool)
{
  int n;
  const char *repos_root;
  const char *repos_relpath;
  svn_revnum_t peg_rev;
  svn_node_kind_t kind;

  if (!FUNC4(skel))
    return FUNC6(SVN_ERR_WC_CORRUPT, NULL,
                            FUNC2("Invalid version info in tree conflict "
                              "description"));

  repos_root = FUNC3(scratch_pool,
                              skel->children->next->data,
                              skel->children->next->len);
  if (*repos_root == '\0')
    {
      *version_info = NULL;
      return SVN_NO_ERROR;
    }

  /* Apply the Subversion 1.7+ url canonicalization rules to a pre 1.7 url */
  repos_root = FUNC7(repos_root, result_pool);

  peg_rev = FUNC1(FUNC3(scratch_pool,
                                          skel->children->next->next->data,
                                          skel->children->next->next->len));

  repos_relpath = FUNC3(result_pool,
                                 skel->children->next->next->next->data,
                                 skel->children->next->next->next->len);

  FUNC0(FUNC5(&n, node_kind_map,
                          skel->children->next->next->next->next));
  kind = (svn_node_kind_t)n;

  *version_info = FUNC8(repos_root,
                                                  NULL,
                                                  repos_relpath,
                                                  peg_rev,
                                                  kind,
                                                  result_pool);

  return SVN_NO_ERROR;
}