#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int has_sha1; int /*<<< orphan*/  sha1_digest; int /*<<< orphan*/  md5_digest; } ;
typedef  TYPE_1__ svn_fs_x__representation_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_7__ {int /*<<< orphan*/  digest; } ;
typedef  TYPE_2__ svn_checksum_t ;
typedef  int /*<<< orphan*/  svn_checksum_ctx_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static svn_error_t *
FUNC4(svn_fs_x__representation_t *rep,
              const svn_checksum_ctx_t *md5_ctx,
              const svn_checksum_ctx_t *sha1_ctx,
              apr_pool_t *scratch_pool)
{
  svn_checksum_t *checksum;

  FUNC0(FUNC2(&checksum, md5_ctx, scratch_pool));
  FUNC1(rep->md5_digest, checksum->digest, FUNC3(checksum));
  rep->has_sha1 = sha1_ctx != NULL;
  if (rep->has_sha1)
    {
      FUNC0(FUNC2(&checksum, sha1_ctx, scratch_pool));
      FUNC1(rep->sha1_digest, checksum->digest, FUNC3(checksum));
    }

  return SVN_NO_ERROR;
}