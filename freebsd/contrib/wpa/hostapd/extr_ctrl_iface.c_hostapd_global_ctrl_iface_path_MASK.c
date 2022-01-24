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
struct hapd_interfaces {int /*<<< orphan*/ * global_iface_name; int /*<<< orphan*/ * global_iface_path; } ;

/* Variables and functions */
 char* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static char * FUNC3(struct hapd_interfaces *interface)
{
	char *buf;
	size_t len;

	if (interface->global_iface_path == NULL)
		return NULL;

	len = FUNC2(interface->global_iface_path) +
		FUNC2(interface->global_iface_name) + 2;
	buf = FUNC0(len);
	if (buf == NULL)
		return NULL;

	FUNC1(buf, len, "%s/%s", interface->global_iface_path,
		    interface->global_iface_name);
	buf[len - 1] = '\0';
	return buf;
}