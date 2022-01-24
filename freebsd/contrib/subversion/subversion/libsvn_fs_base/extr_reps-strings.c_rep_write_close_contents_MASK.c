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
struct rep_write_baton {int /*<<< orphan*/  pool; int /*<<< orphan*/  fs; scalar_t__ trail; scalar_t__ finalized; int /*<<< orphan*/  sha1_checksum_ctx; int /*<<< orphan*/  sha1_checksum; int /*<<< orphan*/  md5_checksum_ctx; int /*<<< orphan*/  md5_checksum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ * (*) (struct rep_write_baton*,scalar_t__),struct rep_write_baton*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct rep_write_baton*,scalar_t__) ; 

__attribute__((used)) static svn_error_t *
FUNC4(void *baton)
{
  struct rep_write_baton *wb = baton;

  /* ### Thought: if we fixed apr-util MD5 contexts to allow repeated
     digestification, then we wouldn't need a stream close function at
     all -- instead, we could update the stored checksum each time a
     write occurred, which would have the added advantage of making
     interleaving reads and writes work.  Currently, they'd fail with
     a checksum mismatch, it just happens that our code never tries to
     do that anyway. */

  if (! wb->finalized)
    {
      FUNC0(FUNC1(&wb->md5_checksum, wb->md5_checksum_ctx,
                                 wb->pool));
      FUNC0(FUNC1(&wb->sha1_checksum, wb->sha1_checksum_ctx,
                                 wb->pool));
      wb->finalized = TRUE;
    }

  /* If we got a trail, use it; else make one. */
  if (wb->trail)
    return FUNC3(wb, wb->trail);
  else
    /* We need to keep our trail pool around this time so the
       checksums we've calculated survive. */
    return FUNC2(wb->fs, txn_body_write_close_rep,
                                  wb, FALSE, wb->pool);
}