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
struct smbioc_rw {char* ioc_base; size_t ioc_cnt; int /*<<< orphan*/  ioc_offset; int /*<<< orphan*/  ioc_fh; } ;
struct smb_ctx {int /*<<< orphan*/  ct_fd; } ;
typedef  int /*<<< orphan*/  smbfh ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int /*<<< orphan*/  SMBIOC_READ ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct smbioc_rw*) ; 

int
FUNC1(struct smb_ctx *ctx, smbfh fh, off_t offset, size_t count, char *dst)
{
	struct smbioc_rw rwrq;

	rwrq.ioc_fh = fh;
	rwrq.ioc_base = dst;
	rwrq.ioc_cnt = count;
	rwrq.ioc_offset = offset;
	if (FUNC0(ctx->ct_fd, SMBIOC_READ, &rwrq) == -1)
		return -1;
	return rwrq.ioc_cnt;
}