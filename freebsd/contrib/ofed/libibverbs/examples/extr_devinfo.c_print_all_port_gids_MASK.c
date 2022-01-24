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
union ibv_gid {int* raw; } ;
typedef  int uint8_t ;
struct ibv_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC1 (struct ibv_context*,int,int,union ibv_gid*) ; 
 int /*<<< orphan*/  FUNC2 (union ibv_gid*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC4(struct ibv_context *ctx, uint8_t port_num, int tbl_len)
{
	union ibv_gid gid;
	int rc = 0;
	int i;

	for (i = 0; i < tbl_len; i++) {
		rc = FUNC1(ctx, port_num, i, &gid);
		if (rc) {
			FUNC0(stderr, "Failed to query gid to port %d, index %d\n",
			       port_num, i);
			return rc;
		}
		if (!FUNC2(&gid))
			FUNC3("\t\t\tGID[%3d]:\t\t%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x\n",
			       i,
			       gid.raw[ 0], gid.raw[ 1],
			       gid.raw[ 2], gid.raw[ 3],
			       gid.raw[ 4], gid.raw[ 5],
			       gid.raw[ 6], gid.raw[ 7],
			       gid.raw[ 8], gid.raw[ 9],
			       gid.raw[10], gid.raw[11],
			       gid.raw[12], gid.raw[13],
			       gid.raw[14], gid.raw[15]);
	}
	return rc;
}