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
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const**,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC4(const char **file_name, const char *line, apr_pool_t *result_pool,
              apr_pool_t *scratch_pool)
{
  const char *utf8_path;
  const char *canon_path;

  /* Grab the filename and encode it in UTF-8. */
  /* TODO: Allow specifying the patch file's encoding.
   *       For now, we assume its encoding is native. */
  /* ### This can fail if the filename cannot be represented in the current
   * ### locale's encoding. */
  FUNC0(FUNC3(&utf8_path,
                                  line,
                                  scratch_pool));

  /* Canonicalize the path name. */
  canon_path = FUNC2(utf8_path, scratch_pool);

  *file_name = FUNC1(result_pool, canon_path);

  return SVN_NO_ERROR;
}