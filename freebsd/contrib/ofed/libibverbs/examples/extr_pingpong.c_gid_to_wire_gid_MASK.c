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
typedef  union ibv_gid {int dummy; } ibv_gid ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  tmp_gid ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,union ibv_gid const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

void FUNC3(const union ibv_gid *gid, char wgid[])
{
	uint32_t tmp_gid[4];
	int i;

	FUNC1(tmp_gid, gid, sizeof(tmp_gid));
	for (i = 0; i < 4; ++i)
		FUNC2(&wgid[i * 8], "%08x", FUNC0(tmp_gid[i]));
}