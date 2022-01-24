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
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC7(apr_array_header_t **propchanges,
                          apr_hash_t **original_props,
                          svn_wc__db_t *db,
                          const char *local_abspath,
                          apr_pool_t *result_pool,
                          apr_pool_t *scratch_pool)
{
  apr_hash_t *baseprops;

  FUNC1(FUNC3(local_abspath));

  /* ### if pristines are not defined, then should this raise an error,
     ### or use an empty set?  */
  FUNC0(FUNC5(&baseprops, db, local_abspath,
                                         result_pool, scratch_pool));

  if (original_props != NULL)
    *original_props = baseprops;

  if (propchanges != NULL)
    {
      apr_hash_t *actual_props;

      /* Some nodes do not have pristine props, so let's just use an empty
         set here. Thus, any ACTUAL props are additions.  */
      if (baseprops == NULL)
        baseprops = FUNC2(scratch_pool);

      FUNC0(FUNC6(&actual_props, db, local_abspath,
                                    result_pool, scratch_pool));
      /* ### be wary. certain nodes don't have ACTUAL props either. we
         ### may want to raise an error. or maybe that is a deletion of
         ### any potential pristine props?  */

      FUNC0(FUNC4(propchanges, actual_props, baseprops,
                             result_pool));
    }

  return SVN_NO_ERROR;
}