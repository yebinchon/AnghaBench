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
struct hapd_interfaces {char* global_iface_name; int /*<<< orphan*/ * global_iface_path; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(struct hapd_interfaces *interfaces,
					 const char *path)
{
#ifndef CONFIG_CTRL_IFACE_UDP
	char *pos;
#endif /* !CONFIG_CTRL_IFACE_UDP */

	FUNC0(interfaces->global_iface_path);
	interfaces->global_iface_path = FUNC1(path);
	if (interfaces->global_iface_path == NULL)
		return -1;

#ifndef CONFIG_CTRL_IFACE_UDP
	pos = FUNC2(interfaces->global_iface_path, '/');
	if (pos == NULL) {
		FUNC3(MSG_ERROR, "No '/' in the global control interface "
			   "file");
		FUNC0(interfaces->global_iface_path);
		interfaces->global_iface_path = NULL;
		return -1;
	}

	*pos = '\0';
	interfaces->global_iface_name = pos + 1;
#endif /* !CONFIG_CTRL_IFACE_UDP */

	return 0;
}