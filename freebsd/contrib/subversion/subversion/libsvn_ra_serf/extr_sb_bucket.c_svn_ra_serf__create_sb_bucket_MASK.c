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
typedef  int /*<<< orphan*/  svn_spillbuf_t ;
struct sbb_baton {int /*<<< orphan*/  scratch_pool; int /*<<< orphan*/ * holding; int /*<<< orphan*/ * spillbuf; } ;
typedef  int /*<<< orphan*/  serf_bucket_t ;
typedef  int /*<<< orphan*/  serf_bucket_alloc_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  sb_bucket_vtable ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct sbb_baton*) ; 
 struct sbb_baton* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

serf_bucket_t *
FUNC3(svn_spillbuf_t *spillbuf,
                              serf_bucket_alloc_t *allocator,
                              apr_pool_t *result_pool,
                              apr_pool_t *scratch_pool)
{
  struct sbb_baton *sbb;

  sbb = FUNC1(allocator, sizeof(*sbb));
  sbb->spillbuf = spillbuf;
  sbb->holding = NULL;
  sbb->scratch_pool = FUNC2(result_pool);

  return FUNC0(&sb_bucket_vtable, allocator, sbb);
}