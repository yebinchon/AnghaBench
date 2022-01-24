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
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_4__ {scalar_t__ kind; } ;
typedef  TYPE_1__ svn_checksum_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  PRISTINE_STORAGE_EXT ; 
 char const* PRISTINE_STORAGE_RELPATH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_VA_NULL ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ svn_checksum_sha1 ; 
 char* FUNC2 (TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int FUNC3 (char const*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char const*,char*,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC6(const char **pristine_abspath,
                   const char *wcroot_abspath,
                   const svn_checksum_t *sha1_checksum,
                   apr_pool_t *result_pool,
                   apr_pool_t *scratch_pool)
{
  const char *base_dir_abspath;
  const char *hexdigest = FUNC2(sha1_checksum, scratch_pool);
  char subdir[3];

  /* ### code is in transition. make sure we have the proper data.  */
  FUNC0(pristine_abspath != NULL);
  FUNC0(FUNC3(wcroot_abspath));
  FUNC0(sha1_checksum != NULL);
  FUNC0(sha1_checksum->kind == svn_checksum_sha1);

  base_dir_abspath = FUNC4(scratch_pool,
                                          wcroot_abspath,
                                          FUNC5(scratch_pool),
                                          PRISTINE_STORAGE_RELPATH,
                                          SVN_VA_NULL);

  /* We should have a valid checksum and (thus) a valid digest. */
  FUNC0(hexdigest != NULL);

  /* Get the first two characters of the digest, for the subdir. */
  subdir[0] = hexdigest[0];
  subdir[1] = hexdigest[1];
  subdir[2] = '\0';

  hexdigest = FUNC1(scratch_pool, hexdigest, PRISTINE_STORAGE_EXT,
                          SVN_VA_NULL);

  /* The file is located at DIR/.svn/pristine/XX/XXYYZZ...svn-base */
  *pristine_abspath = FUNC4(result_pool,
                                           base_dir_abspath,
                                           subdir,
                                           hexdigest,
                                           SVN_VA_NULL);
  return SVN_NO_ERROR;
}