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
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int /*<<< orphan*/  G_ELI_SUFFIX ; 
 int MAXPATHLEN ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC2(const char *prov)
{
	char name[MAXPATHLEN];

	/*
	 * Not the best way to do it, but the easiest.
	 * We try to open provider and check if it is a GEOM provider
	 * by asking about its sectorsize.
	 */
	FUNC1(name, sizeof(name), "%s%s", prov, G_ELI_SUFFIX);
	return (FUNC0(name) > 0);
}