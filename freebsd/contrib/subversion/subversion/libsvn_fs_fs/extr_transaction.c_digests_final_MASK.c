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
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_6__ {int /*<<< orphan*/  digest; } ;
typedef  TYPE_1__ svn_checksum_t ;
typedef  int /*<<< orphan*/  svn_checksum_ctx_t ;
struct TYPE_7__ {int has_sha1; int /*<<< orphan*/  sha1_digest; int /*<<< orphan*/  md5_digest; } ;
typedef  TYPE_2__ representation_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static svn_error_t *
FUNC4(representation_t *rep,
              const svn_checksum_ctx_t *md5_ctx,
              const svn_checksum_ctx_t *sha1_ctx,
              apr_pool_t *pool)
{
  svn_checksum_t *checksum;

  FUNC0(FUNC2(&checksum, md5_ctx, pool));
  FUNC1(rep->md5_digest, checksum->digest, FUNC3(checksum));
  rep->has_sha1 = sha1_ctx != NULL;
  if (rep->has_sha1)
    {
      FUNC0(FUNC2(&checksum, sha1_ctx, pool));
      FUNC1(rep->sha1_digest, checksum->digest, FUNC3(checksum));
    }

  return SVN_NO_ERROR;
}