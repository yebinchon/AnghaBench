#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_19__ {TYPE_1__* vtable; } ;
typedef  TYPE_2__ svn_ra_session_t ;
struct TYPE_20__ {int /*<<< orphan*/ * prop_hash; int /*<<< orphan*/  path_or_url; } ;
typedef  TYPE_3__ svn_prop_inherited_item_t ;
struct TYPE_21__ {scalar_t__ apr_err; } ;
typedef  TYPE_4__ svn_error_t ;
typedef  int /*<<< orphan*/  apr_ssize_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;
struct TYPE_18__ {TYPE_4__* (* get_dir ) (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_DIRENT_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_ERR_RA_DAV_FORBIDDEN ; 
 scalar_t__ SVN_ERR_RA_NOT_AUTHORIZED ; 
 TYPE_4__* SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC10 (int /*<<< orphan*/ *,int) ; 
 char* FUNC11 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC12 (char const*,char const*) ; 
 TYPE_4__* FUNC13 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*) ; 
 TYPE_4__* FUNC15 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ svn_prop_regular_kind ; 
 scalar_t__ FUNC19 (char const*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*,char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,TYPE_3__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC25 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (char const*,char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC27(svn_ra_session_t *session,
                                 const char *path,
                                 svn_revnum_t revision,
                                 apr_array_header_t **inherited_props,
                                 apr_pool_t *result_pool,
                                 apr_pool_t *scratch_pool)
{
  const char *repos_root_url;
  const char *session_url;
  const char *parent_url;
  apr_pool_t *iterpool = FUNC17(scratch_pool);

  *inherited_props =
    FUNC1(result_pool, 1, sizeof(svn_prop_inherited_item_t *));

  /* Walk to the root of the repository getting inherited
     props for PATH. */
  FUNC0(FUNC20(session, &repos_root_url, scratch_pool));
  FUNC0(FUNC21(session, &session_url, scratch_pool));
  parent_url = session_url;

  while (FUNC12(repos_root_url, parent_url))
    {
      apr_hash_index_t *hi;
      apr_hash_t *parent_props;
      apr_hash_t *final_hash = FUNC4(result_pool);
      svn_error_t *err;

      FUNC16(iterpool);
      parent_url = FUNC25(parent_url, scratch_pool);
      FUNC0(FUNC22(session, parent_url, iterpool));
      err = session->vtable->get_dir(session, NULL, NULL,
                                     &parent_props, "",
                                     revision, SVN_DIRENT_ALL,
                                     iterpool);

      /* If the user doesn't have read access to a parent path then
         skip, but allow them to inherit from further up. */
      if (err)
        {
          if ((err->apr_err == SVN_ERR_RA_NOT_AUTHORIZED)
              || (err->apr_err == SVN_ERR_RA_DAV_FORBIDDEN))
            {
              FUNC14(err);
              continue;
            }
          else
            {
              return FUNC15(err);
            }
        }

      for (hi = FUNC3(scratch_pool, parent_props);
           hi;
           hi = FUNC5(hi))
        {
          const char *name = FUNC7(hi);
          apr_ssize_t klen = FUNC8(hi);
          svn_string_t *value = FUNC9(hi);

          if (FUNC19(name) == svn_prop_regular_kind)
            {
              name = FUNC11(result_pool, name);
              value = FUNC24(value, result_pool);
              FUNC6(final_hash, name, klen, value);
            }
        }

      if (FUNC2(final_hash))
        {
          svn_prop_inherited_item_t *new_iprop =
            FUNC10(result_pool, sizeof(*new_iprop));
          new_iprop->path_or_url = FUNC26(repos_root_url,
                                                         parent_url,
                                                         result_pool);
          new_iprop->prop_hash = final_hash;
          FUNC23(*inherited_props, &new_iprop, 0);
        }
    }

  /* Reparent session back to original URL. */
  FUNC0(FUNC22(session, session_url, scratch_pool));

  FUNC18(iterpool);
  return SVN_NO_ERROR;
}