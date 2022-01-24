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
typedef  int u_short ;

/* Variables and functions */
 int RES_DONTSERVE ; 
 int RES_DONTTRUST ; 
 int RES_FLAKE ; 
 int RES_IGNORE ; 
 int RES_KOD ; 
 int RES_LIMITED ; 
 int RES_LPTRAP ; 
 int RES_MSSNTP ; 
 int RES_NOEPEER ; 
 int RES_NOMODIFY ; 
 int RES_NOMRULIST ; 
 int RES_NOPEER ; 
 int RES_NOQUERY ; 
 int RES_NOTRAP ; 
 int RES_VERSION ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int) ; 

char *
FUNC2(u_short rflags)
{
	static char rfs[1024];

	rfs[0] = '\0';

	if (rflags & RES_FLAKE) {
		rflags &= ~RES_FLAKE;
		FUNC0(rfs, sizeof rfs, "flake");
	}

	if (rflags & RES_IGNORE) {
		rflags &= ~RES_IGNORE;
		FUNC0(rfs, sizeof rfs, "ignore");
	}

	if (rflags & RES_KOD) {
		rflags &= ~RES_KOD;
		FUNC0(rfs, sizeof rfs, "kod");
	}

	if (rflags & RES_MSSNTP) {
		rflags &= ~RES_MSSNTP;
		FUNC0(rfs, sizeof rfs, "mssntp");
	}

	if (rflags & RES_LIMITED) {
		rflags &= ~RES_LIMITED;
		FUNC0(rfs, sizeof rfs, "limited");
	}

	if (rflags & RES_LPTRAP) {
		rflags &= ~RES_LPTRAP;
		FUNC0(rfs, sizeof rfs, "lptrap");
	}

	if (rflags & RES_NOMODIFY) {
		rflags &= ~RES_NOMODIFY;
		FUNC0(rfs, sizeof rfs, "nomodify");
	}

	if (rflags & RES_NOMRULIST) {
		rflags &= ~RES_NOMRULIST;
		FUNC0(rfs, sizeof rfs, "nomrulist");
	}

	if (rflags & RES_NOEPEER) {
		rflags &= ~RES_NOEPEER;
		FUNC0(rfs, sizeof rfs, "noepeer");
	}

	if (rflags & RES_NOPEER) {
		rflags &= ~RES_NOPEER;
		FUNC0(rfs, sizeof rfs, "nopeer");
	}

	if (rflags & RES_NOQUERY) {
		rflags &= ~RES_NOQUERY;
		FUNC0(rfs, sizeof rfs, "noquery");
	}

	if (rflags & RES_DONTSERVE) {
		rflags &= ~RES_DONTSERVE;
		FUNC0(rfs, sizeof rfs, "dontserve");
	}

	if (rflags & RES_NOTRAP) {
		rflags &= ~RES_NOTRAP;
		FUNC0(rfs, sizeof rfs, "notrap");
	}

	if (rflags & RES_DONTTRUST) {
		rflags &= ~RES_DONTTRUST;
		FUNC0(rfs, sizeof rfs, "notrust");
	}

	if (rflags & RES_VERSION) {
		rflags &= ~RES_VERSION;
		FUNC0(rfs, sizeof rfs, "version");
	}

	if (rflags) {
		char string[10];

		FUNC1(string, sizeof string, "%0x", rflags);
		FUNC0(rfs, sizeof rfs, string);
	}

	if ('\0' == rfs[0]) {
		FUNC0(rfs, sizeof rfs, "(none)");
	}

	return rfs;
}