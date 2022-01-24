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

/* Variables and functions */
 int /*<<< orphan*/  caguid_after ; 
 int /*<<< orphan*/  caguid_before ; 
 int /*<<< orphan*/  caguid_flag ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  portguid_after ; 
 int /*<<< orphan*/  portguid_before ; 
 int /*<<< orphan*/  portguid_flag ; 
 int /*<<< orphan*/  portguid_nodeguid ; 
 int /*<<< orphan*/  switchguid_after ; 
 int /*<<< orphan*/  switchguid_before ; 
 int /*<<< orphan*/  switchguid_flag ; 
 int /*<<< orphan*/  sysimgguid_after ; 
 int /*<<< orphan*/  sysimgguid_before ; 
 int /*<<< orphan*/  sysimgguid_flag ; 

__attribute__((used)) static int FUNC2(void *context, int ch, char *optarg)
{
	switch (ch) {
	case 1:
		if (FUNC0(optarg,
				      &switchguid_before,
				      &switchguid_after) < 0)
			return -1;
		switchguid_flag++;
		break;
	case 2:
		if (FUNC0(optarg,
				      &caguid_before,
				      &caguid_after) < 0)
			return -1;
		caguid_flag++;
		break;
	case 3:
		if (FUNC0(optarg,
				      &sysimgguid_before,
				      &sysimgguid_after) < 0)
			return -1;
		sysimgguid_flag++;
		break;
	case 4:
		if (FUNC1(optarg,
					  &portguid_nodeguid,
					  &portguid_before,
					  &portguid_after) < 0)
			return -1;
		portguid_flag++;
		break;
	default:
		return -1;
	}

	return 0;
}