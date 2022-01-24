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
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_4__ {int /*<<< orphan*/  server; } ;
typedef  TYPE_1__ authz_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_ENTRY_COMMITTED_DATE ; 
 int /*<<< orphan*/  SVN_PROP_ENTRY_COMMITTED_REV ; 
 int /*<<< orphan*/  SVN_PROP_ENTRY_LAST_AUTHOR ; 
 int /*<<< orphan*/  SVN_PROP_ENTRY_UUID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const**,char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC10(apr_hash_t **props,
          apr_array_header_t **iprops,
          authz_baton_t *b,
          svn_fs_root_t *root,
          const char *path,
          apr_pool_t *pool)
{
  /* Get the explicit properties. */
  if (props)
    {
      svn_string_t *str;
      svn_revnum_t crev;
      const char *cdate, *cauthor, *uuid;

      FUNC0(FUNC3(props, root, path, pool));

      /* Hardcode the values for the committed revision, date, and author. */
      FUNC0(FUNC7(&crev, &cdate, &cauthor, root,
                                           path, pool));
      str = FUNC9(pool, "%ld", crev);
      FUNC5(*props, SVN_PROP_ENTRY_COMMITTED_REV, str);
      str = (cdate) ? FUNC8(cdate, pool) : NULL;
      FUNC5(*props, SVN_PROP_ENTRY_COMMITTED_DATE, str);
      str = (cauthor) ? FUNC8(cauthor, pool) : NULL;
      FUNC5(*props, SVN_PROP_ENTRY_LAST_AUTHOR, str);

      /* Hardcode the values for the UUID. */
      FUNC0(FUNC2(FUNC4(root), &uuid, pool));
      str = (uuid) ? FUNC8(uuid, pool) : NULL;
      FUNC5(*props, SVN_PROP_ENTRY_UUID, str);
    }

  /* Get any inherited properties the user is authorized to. */
  if (iprops)
    {
      FUNC0(FUNC6(
                iprops, root, path, NULL,
                FUNC1(b->server),
                b, pool, pool));
    }

  return SVN_NO_ERROR;
}