#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {void* nfsv3_nsec; void* nfsv3_sec; } ;
struct TYPE_3__ {void* nfsv3_nsec; void* nfsv3_sec; } ;
struct nfsv3_sattr {scalar_t__ sa_atimetype; scalar_t__ sa_mtimetype; TYPE_2__ sa_mtime; TYPE_1__ sa_atime; void* sa_size; void* sa_sizeset; void* sa_gid; void* sa_gidset; void* sa_uid; void* sa_uidset; void* sa_mode; void* sa_modeset; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const) ; 
 scalar_t__ NFSV3SATTRTIME_TOCLIENT ; 

__attribute__((used)) static const uint32_t *
FUNC2(netdissect_options *ndo,
             const uint32_t *dp, struct nfsv3_sattr *sa3)
{
	FUNC1(dp[0]);
	sa3->sa_modeset = FUNC0(dp);
	dp++;
	if (sa3->sa_modeset) {
		FUNC1(dp[0]);
		sa3->sa_mode = FUNC0(dp);
		dp++;
	}

	FUNC1(dp[0]);
	sa3->sa_uidset = FUNC0(dp);
	dp++;
	if (sa3->sa_uidset) {
		FUNC1(dp[0]);
		sa3->sa_uid = FUNC0(dp);
		dp++;
	}

	FUNC1(dp[0]);
	sa3->sa_gidset = FUNC0(dp);
	dp++;
	if (sa3->sa_gidset) {
		FUNC1(dp[0]);
		sa3->sa_gid = FUNC0(dp);
		dp++;
	}

	FUNC1(dp[0]);
	sa3->sa_sizeset = FUNC0(dp);
	dp++;
	if (sa3->sa_sizeset) {
		FUNC1(dp[0]);
		sa3->sa_size = FUNC0(dp);
		dp++;
	}

	FUNC1(dp[0]);
	sa3->sa_atimetype = FUNC0(dp);
	dp++;
	if (sa3->sa_atimetype == NFSV3SATTRTIME_TOCLIENT) {
		FUNC1(dp[1]);
		sa3->sa_atime.nfsv3_sec = FUNC0(dp);
		dp++;
		sa3->sa_atime.nfsv3_nsec = FUNC0(dp);
		dp++;
	}

	FUNC1(dp[0]);
	sa3->sa_mtimetype = FUNC0(dp);
	dp++;
	if (sa3->sa_mtimetype == NFSV3SATTRTIME_TOCLIENT) {
		FUNC1(dp[1]);
		sa3->sa_mtime.nfsv3_sec = FUNC0(dp);
		dp++;
		sa3->sa_mtime.nfsv3_nsec = FUNC0(dp);
		dp++;
	}

	return dp;
trunc:
	return NULL;
}