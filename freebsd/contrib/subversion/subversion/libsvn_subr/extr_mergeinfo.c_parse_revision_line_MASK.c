#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ nelts; } ;
typedef  TYPE_1__ svn_rangelist_t ;
typedef  int /*<<< orphan*/  svn_mergeinfo_t ;
typedef  int /*<<< orphan*/  svn_merge_range_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_ssize_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_MERGEINFO_PARSE_ERROR ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const**,char const*,char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const**,char const*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC15(const char **input, const char *end, svn_mergeinfo_t hash,
                    apr_pool_t *scratch_pool)
{
  const char *pathname = "";
  apr_ssize_t klen;
  svn_rangelist_t *existing_rangelist;
  svn_rangelist_t *rangelist = FUNC2(scratch_pool, 1,
                                              sizeof(svn_merge_range_t *));

  FUNC0(FUNC7(input, end, &pathname, scratch_pool));

  if (*(*input) != ':')
    return FUNC10(SVN_ERR_MERGEINFO_PARSE_ERROR, NULL,
                            FUNC1("Pathname not terminated by ':'"));

  *input = *input + 1;

  FUNC0(FUNC8(input, end, rangelist, scratch_pool));

  if (rangelist->nelts == 0)
      return FUNC11(SVN_ERR_MERGEINFO_PARSE_ERROR, NULL,
                               FUNC1("Mergeinfo for '%s' maps to an "
                                 "empty revision range"), pathname);
  if (*input != end && *(*input) != '\n')
    return FUNC11(SVN_ERR_MERGEINFO_PARSE_ERROR, NULL,
                             FUNC1("Could not find end of line in range list line "
                               "in '%s'"), *input);

  if (*input != end)
    *input = *input + 1;

  /* Sort the rangelist, combine adjacent ranges into single ranges, and
     make sure there are no overlapping ranges.  Luckily, most data in
     svn:mergeinfo will already be in normalized form and this will be quick.
   */
  FUNC0(FUNC12(rangelist, scratch_pool));

  /* Handle any funky mergeinfo with relative merge source paths that
     might exist due to issue #3547.  It's possible that this issue allowed
     the creation of mergeinfo with path keys that differ only by a
     leading slash, e.g. "trunk:4033\n/trunk:4039-4995".  In the event
     we encounter this we merge the rangelists together under a single
     absolute path key. */
  klen = FUNC9(pathname);
  existing_rangelist = FUNC3(hash, pathname, klen);
  if (existing_rangelist)
    FUNC0(FUNC14(rangelist, existing_rangelist,
                                 scratch_pool, scratch_pool));

  FUNC5(hash, FUNC6(FUNC4(hash), pathname, klen),
               klen, FUNC13(rangelist, FUNC4(hash)));

  return SVN_NO_ERROR;
}