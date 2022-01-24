#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int len; scalar_t__ data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  int /*<<< orphan*/  apr_uint32_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_byte_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_CORRUPT_PACKED_DATA ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_checksum_fnv1a_32x4 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static svn_error_t *
FUNC6(svn_stringbuf_t *content,
                apr_pool_t *scratch_pool)
{
  const apr_byte_t *digest;
  svn_checksum_t *actual, *expected;

  /* Verify the checksum. */
  if (content->len < sizeof(apr_uint32_t))
    return FUNC5(SVN_ERR_CORRUPT_PACKED_DATA, NULL,
                            "File too short");

  content->len -= sizeof(apr_uint32_t);
  digest = (apr_byte_t *)content->data + content->len;

  expected = FUNC2(digest, scratch_pool);
  FUNC0(FUNC1(&actual, svn_checksum_fnv1a_32x4, content->data,
                       content->len, scratch_pool));

  if (!FUNC3(actual, expected))
    FUNC0(FUNC4(expected, actual, scratch_pool, 
                                      "checksum mismatch"));

  return SVN_NO_ERROR;
}