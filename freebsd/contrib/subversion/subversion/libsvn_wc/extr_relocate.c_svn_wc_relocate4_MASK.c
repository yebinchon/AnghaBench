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
typedef  int /*<<< orphan*/  (* svn_wc_relocation_validator3_t ) (void*,char const*,char const*,char const*,int /*<<< orphan*/ *) ;
struct TYPE_4__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ svn_wc_context_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_CLIENT_INVALID_RELOCATION ; 
 int /*<<< orphan*/  SVN_ERR_WC_INVALID_OP_ON_CWD ; 
 int /*<<< orphan*/  SVN_ERR_WC_INVALID_RELOCATION ; 
 int /*<<< orphan*/  SVN_VA_NULL ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*,char const*,size_t) ; 
 char const* FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,...) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ svn_node_dir ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 char* FUNC11 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (char const**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,char const**,char const**,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC16 (char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC17(svn_wc_context_t *wc_ctx,
                 const char *local_abspath,
                 const char *from,
                 const char *to,
                 svn_wc_relocation_validator3_t validator,
                 void *validator_baton,
                 apr_pool_t *scratch_pool)
{
  svn_node_kind_t kind;
  const char *repos_relpath;
  const char *old_repos_root, *old_url;
  const char *new_repos_root, *new_url;
  size_t from_len;
  size_t old_url_len;
  const char *uuid;
  svn_boolean_t is_wc_root;

  FUNC0(FUNC15(&is_wc_root, wc_ctx, local_abspath,
                            scratch_pool));
  if (! is_wc_root)
    {
      const char *wcroot_abspath;
      svn_error_t *err;

      err = FUNC12(&wcroot_abspath, wc_ctx->db,
                                  local_abspath, scratch_pool, scratch_pool);
      if (err)
        {
          FUNC6(err);
          return FUNC8(
            SVN_ERR_WC_INVALID_OP_ON_CWD, NULL,
            FUNC1("Cannot relocate '%s' as it is not the root of a working copy"),
            FUNC5(local_abspath, scratch_pool));
        }
      else
        {
          return FUNC8(
            SVN_ERR_WC_INVALID_OP_ON_CWD, NULL,
            FUNC1("Cannot relocate '%s' as it is not the root of a working copy; "
              "try relocating '%s' instead"),
            FUNC5(local_abspath, scratch_pool),
            FUNC5(wcroot_abspath, scratch_pool));
        }
    }

  FUNC0(FUNC14(NULL, &kind, NULL, &repos_relpath,
                               &old_repos_root, &uuid,
                               NULL, NULL, NULL, NULL, NULL, NULL,
                               NULL, NULL, NULL, NULL, NULL, NULL,
                               NULL, NULL, NULL, NULL, NULL, NULL,
                               NULL, NULL, NULL,
                               wc_ctx->db, local_abspath, scratch_pool,
                               scratch_pool));

  if (kind != svn_node_dir)
    return FUNC7(SVN_ERR_CLIENT_INVALID_RELOCATION, NULL,
                            FUNC1("Cannot relocate a single file"));

  old_url = FUNC11(old_repos_root, repos_relpath,
                                        scratch_pool);
  old_url_len = FUNC3(old_url);
  from_len = FUNC3(from);
  if ((from_len > old_url_len) || (FUNC4(old_url, from, FUNC3(from)) != 0))
    return FUNC8(SVN_ERR_WC_INVALID_RELOCATION, NULL,
                             FUNC1("Invalid source URL prefix: '%s' (does not "
                               "overlap target's URL '%s')"),
                             from, old_url);

  if (old_url_len == from_len)
    new_url = to;
  else
    new_url = FUNC2(scratch_pool, to, old_url + from_len, SVN_VA_NULL);
  if (! FUNC10(new_url))
    return FUNC8(SVN_ERR_WC_INVALID_RELOCATION, NULL,
                             FUNC1("Invalid relocation destination: '%s' "
                               "(not a URL)"), new_url);

  new_repos_root = FUNC16(new_url, repos_relpath,
                                            scratch_pool, scratch_pool);
  if (!new_repos_root)
    return FUNC8(SVN_ERR_WC_INVALID_RELOCATION, NULL,
                             FUNC1("Invalid relocation destination: '%s' "
                               "(does not point to target)" ), new_url);

  FUNC0(validator(validator_baton, uuid, new_url, new_repos_root,
                    scratch_pool));

  return FUNC9(FUNC13(wc_ctx->db, local_abspath,
                                                    new_repos_root,
                                                    scratch_pool));
}