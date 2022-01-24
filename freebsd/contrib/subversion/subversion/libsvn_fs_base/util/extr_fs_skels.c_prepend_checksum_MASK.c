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
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_3__ {int kind; int /*<<< orphan*/  digest; } ;
typedef  TYPE_1__ svn_checksum_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_MD5_DIGESTSIZE ; 
 int /*<<< orphan*/  APR_SHA1_DIGESTSIZE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC0 (char*) ; 
#define  svn_checksum_md5 129 
#define  svn_checksum_sha1 128 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(svn_skel_t *skel,
                 svn_checksum_t *checksum,
                 apr_pool_t *pool)
{
  svn_skel_t *checksum_skel = FUNC1(pool);

  switch (checksum->kind)
    {
    case svn_checksum_md5:
      FUNC3(FUNC2(checksum->digest,
                                           APR_MD5_DIGESTSIZE, pool),
                        checksum_skel);
      FUNC3(FUNC4("md5", pool), checksum_skel);
      break;

    case svn_checksum_sha1:
      FUNC3(FUNC2(checksum->digest,
                                           APR_SHA1_DIGESTSIZE, pool),
                        checksum_skel);
      FUNC3(FUNC4("sha1", pool), checksum_skel);
      break;

    default:
      return FUNC0("checksum");
    }
  FUNC3(checksum_skel, skel);

  return SVN_NO_ERROR;
}