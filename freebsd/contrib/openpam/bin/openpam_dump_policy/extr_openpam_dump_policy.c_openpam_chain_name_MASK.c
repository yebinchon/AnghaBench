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
typedef  size_t pam_facility_t ;

/* Variables and functions */
 int FUNC0 (char**,char*,char const*,char const*) ; 
 char** pam_facility_name ; 

__attribute__((used)) static char *
FUNC1(const char *service, pam_facility_t fclt)
{
	const char *facility = pam_facility_name[fclt];
	char *name;

	if (FUNC0(&name, "pam_%s_%s", service, facility) == -1)
		return (NULL);
	return (name);
}