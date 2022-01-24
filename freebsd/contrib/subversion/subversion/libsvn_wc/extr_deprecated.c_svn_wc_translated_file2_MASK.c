#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc_adm_access_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_uint32_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 char* FUNC4 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const**,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC8(const char **xlated_path,
                        const char *src,
                        const char *versioned_file,
                        svn_wc_adm_access_t *adm_access,
                        apr_uint32_t flags,
                        apr_pool_t *pool)
{
  const char *versioned_abspath;
  const char *root;
  const char *tmp_root;
  const char *src_abspath;

  FUNC0(FUNC2(&versioned_abspath, versioned_file, pool));
  FUNC0(FUNC2(&src_abspath, src, pool));

  FUNC0(FUNC7(xlated_path, src_abspath,
                                           FUNC6(adm_access),
                                           versioned_abspath,
                                           flags, NULL, NULL, pool, pool));

  if (FUNC1(*xlated_path, src_abspath) == 0)
    *xlated_path = src;
  else if (! FUNC3(versioned_file))
    {
      FUNC0(FUNC5(&tmp_root, pool));
      if (! FUNC4(tmp_root, *xlated_path, pool))
        {
          FUNC0(FUNC2(&root, "", pool));

          if (FUNC4(root, *xlated_path, pool))
            *xlated_path = FUNC4(root, *xlated_path, pool);
        }
    }

  return SVN_NO_ERROR;
}