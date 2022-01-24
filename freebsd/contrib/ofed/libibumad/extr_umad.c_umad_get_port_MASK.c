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
typedef  int /*<<< orphan*/  umad_port_t ;
typedef  int /*<<< orphan*/  dir_name ;

/* Variables and functions */
 int ENODEV ; 
 char* SYS_CA_PORTS_DIR ; 
 char* SYS_INFINIBAND ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 int FUNC1 (char const*,char*,int,int /*<<< orphan*/ *) ; 
 char* FUNC2 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,char const*,char*) ; 

int FUNC4(const char *ca_name, int portnum, umad_port_t * port)
{
	char dir_name[256];

	FUNC0("ca_name %s portnum %d", ca_name, portnum);

	if (!(ca_name = FUNC2(ca_name, &portnum)))
		return -ENODEV;

	FUNC3(dir_name, sizeof(dir_name), "%s/%s/%s",
		 SYS_INFINIBAND, ca_name, SYS_CA_PORTS_DIR);

	return FUNC1(ca_name, dir_name, portnum, port);
}