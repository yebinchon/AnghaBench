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
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 char* UMAD_DEV_DIR ; 
 int FUNC1 (char const*,int) ; 
 char* FUNC2 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,int) ; 

int FUNC4(const char *ca_name, int portnum, char path[], int max)
{
	int umad_id;

	FUNC0("ca %s port %d", ca_name, portnum);

	if (!(ca_name = FUNC2(ca_name, &portnum)))
		return -ENODEV;

	if ((umad_id = FUNC1(ca_name, portnum)) < 0)
		return -EINVAL;

	FUNC3(path, max, "%s/issm%u", UMAD_DEV_DIR, umad_id);

	return 0;
}