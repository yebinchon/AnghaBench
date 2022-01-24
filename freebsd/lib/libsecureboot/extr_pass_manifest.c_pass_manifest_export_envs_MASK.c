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
 char* manifest_hash ; 
 char* manifest_path ; 
 char* manifest_prefix ; 
 int /*<<< orphan*/  manifest_present ; 
 int FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

int
FUNC2()
{
	int rc;

	/* If we have nothing to pass make sure that envs are empty. */
	if (!manifest_present) {
		FUNC1("veriexec.manifest_path");
		FUNC1("veriexec.manifest_hash");
		FUNC1("veriexec.manifest_prefix");
		return (0);
	}

	rc = FUNC0("veriexec.manifest_path", manifest_path, 1);
	if (rc != 0)
		return (rc);

	rc = FUNC0("veriexec.manifest_hash", manifest_hash, 1);
	if (rc != 0) {
		FUNC1("veriexec.manifest_path");
		return (rc);
	}

	if (manifest_prefix[0] != '\0')
		rc = FUNC0("veriexec.manifest_prefix", manifest_prefix, 1);

	return (rc);
}