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
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  size_t svn_checksum_kind_t ;
typedef  scalar_t__ apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_BAD_CHECKSUM_KIND ; 
 int /*<<< orphan*/  SVN_ERR_BAD_CHECKSUM_PARSE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC1 (char*) ; 
 char const** ckind_str ; 
 scalar_t__ FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,char const*,scalar_t__) ; 
 size_t svn_checksum_fnv1a_32x4 ; 
 size_t svn_checksum_md5 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,size_t,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char const*) ; 

svn_error_t *
FUNC6(const svn_checksum_t **checksum,
                         const char *data,
                         apr_pool_t *result_pool,
                         apr_pool_t *scratch_pool)
{
  svn_checksum_kind_t kind;
  svn_checksum_t *parsed_checksum;

  /* All prefixes have the same length. */
  apr_size_t prefix_len = FUNC2(ckind_str[0]);

  /* "$md5 $...", "$sha1$..." or ... */
  if (FUNC2(data) <= prefix_len)
    return FUNC5(SVN_ERR_BAD_CHECKSUM_PARSE, NULL,
                             FUNC1("Invalid prefix in checksum '%s'"),
                             data);

  for (kind = svn_checksum_md5; kind <= svn_checksum_fnv1a_32x4; ++kind)
    if (FUNC3(ckind_str[kind], data, prefix_len) == 0)
      {
        FUNC0(FUNC4(&parsed_checksum, kind,
                                       data + prefix_len, result_pool));
        *checksum = parsed_checksum;
        return SVN_NO_ERROR;
      }

  return FUNC5(SVN_ERR_BAD_CHECKSUM_KIND, NULL,
                           "Unknown checksum kind in '%s'", data);
}