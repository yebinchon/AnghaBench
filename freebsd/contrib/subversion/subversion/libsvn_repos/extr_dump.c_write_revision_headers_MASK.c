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
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char const* SVN_REPOS_DUMPFILE_CONTENT_LENGTH ; 
#define  SVN_REPOS_DUMPFILE_REVISION_NUMBER 128 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC7(svn_stream_t *stream,
                       apr_hash_t *headers,
                       apr_pool_t *scratch_pool)
{
  const char **h;
  apr_hash_index_t *hi;

  static const char *revision_headers_order[] =
  {
    SVN_REPOS_DUMPFILE_REVISION_NUMBER,  /* must be first */
    NULL
  };

  /* Write some headers in a given order */
  for (h = revision_headers_order; *h; h++)
    {
      FUNC0(FUNC6(stream, headers, *h, scratch_pool));
      FUNC5(headers, *h, NULL);
    }

  /* Write any and all remaining headers except Content-length.
   * ### TODO: use a stable order
   */
  for (hi = FUNC1(scratch_pool, headers); hi; hi = FUNC2(hi))
    {
      const char *key = FUNC3(hi);

      if (FUNC4(key, SVN_REPOS_DUMPFILE_CONTENT_LENGTH) != 0)
        FUNC0(FUNC6(stream, headers, key, scratch_pool));
    }

  /* Content-length must be last */
  FUNC0(FUNC6(stream, headers, SVN_REPOS_DUMPFILE_CONTENT_LENGTH,
                       scratch_pool));

  return SVN_NO_ERROR;
}