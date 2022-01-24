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
typedef  int /*<<< orphan*/  trail_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct rep_read_baton {char const* rep_key; scalar_t__ offset; int /*<<< orphan*/  scratch_pool; int /*<<< orphan*/ * trail; int /*<<< orphan*/ * fs; int /*<<< orphan*/  checksum_finalized; scalar_t__ size; void* sha1_checksum_ctx; void* md5_checksum_ctx; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 struct rep_read_baton* FUNC1 (int /*<<< orphan*/ *,int) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_checksum_md5 ; 
 int /*<<< orphan*/  svn_checksum_sha1 ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(struct rep_read_baton **rb_p,
                   svn_fs_t *fs,
                   const char *rep_key,
                   svn_boolean_t use_trail_for_reads,
                   trail_t *trail,
                   apr_pool_t *pool)
{
  struct rep_read_baton *b;

  b = FUNC1(pool, sizeof(*b));
  b->md5_checksum_ctx = FUNC2(svn_checksum_md5, pool);
  b->sha1_checksum_ctx = FUNC2(svn_checksum_sha1, pool);

  if (rep_key)
    FUNC0(FUNC3(&(b->size), fs, rep_key,
                                           trail, pool));
  else
    b->size = 0;

  b->checksum_finalized = FALSE;
  b->fs = fs;
  b->trail = use_trail_for_reads ? trail : NULL;
  b->scratch_pool = FUNC4(pool);
  b->rep_key = rep_key;
  b->offset = 0;

  *rb_p = b;

  return SVN_NO_ERROR;
}