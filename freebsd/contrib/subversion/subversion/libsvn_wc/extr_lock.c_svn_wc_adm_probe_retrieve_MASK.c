#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ svn_wc_adm_access_t ;
typedef  scalar_t__ svn_node_kind_t ;
struct TYPE_18__ {scalar_t__ apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_ERR_WC_NOT_LOCKED ; 
 TYPE_2__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,char const**,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 TYPE_2__* FUNC6 (TYPE_2__*) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_unknown ; 
 TYPE_2__* FUNC7 (scalar_t__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC8 (TYPE_1__**,TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC9(svn_wc_adm_access_t **adm_access,
                          svn_wc_adm_access_t *associated,
                          const char *path,
                          apr_pool_t *pool)
{
  const char *dir;
  const char *local_abspath;
  svn_node_kind_t kind;
  svn_error_t *err;

  FUNC1(associated != NULL);

  FUNC0(FUNC4(&local_abspath, path, pool));
  FUNC0(FUNC7(&kind, associated->db, local_abspath,
                               TRUE /* allow_missing */,
                               TRUE /* show_deleted */,
                               FALSE /* show_hidden*/,
                               pool));

  if (kind == svn_node_dir)
    dir = path;
  else if (kind != svn_node_unknown)
    dir = FUNC3(path, pool);
  else
    /* Not a versioned item, probe it */
    FUNC0(FUNC2(associated->db, &dir, path, pool));

  err = FUNC8(adm_access, associated, dir, pool);
  if (err && err->apr_err == SVN_ERR_WC_NOT_LOCKED)
    {
      /* We'll receive a NOT LOCKED error for various reasons,
         including the reason we'll actually want to test for:
         The path is a versioned directory, but missing, in which case
         we want its parent's adm_access (which holds minimal data
         on the child) */
      FUNC5(err);
      FUNC0(FUNC2(associated->db, &dir, path, pool));
      FUNC0(FUNC8(adm_access, associated, dir, pool));
    }
  else
    return FUNC6(err);

  return SVN_NO_ERROR;
}