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
struct connection_info {int lport; void* rdomain; void* laddress; void* user; void* host; void* address; } ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 
 char* FUNC3 (char**,char*) ; 
 void* FUNC4 (char*) ; 

int FUNC5(struct connection_info *ci, char *spec)
{
	char *p;

	while ((p = FUNC3(&spec, ",")) && *p != '\0') {
		if (FUNC2(p, "addr=", 5) == 0) {
			ci->address = FUNC4(p + 5);
		} else if (FUNC2(p, "host=", 5) == 0) {
			ci->host = FUNC4(p + 5);
		} else if (FUNC2(p, "user=", 5) == 0) {
			ci->user = FUNC4(p + 5);
		} else if (FUNC2(p, "laddr=", 6) == 0) {
			ci->laddress = FUNC4(p + 6);
		} else if (FUNC2(p, "rdomain=", 8) == 0) {
			ci->rdomain = FUNC4(p + 8);
		} else if (FUNC2(p, "lport=", 6) == 0) {
			ci->lport = FUNC0(p + 6);
			if (ci->lport == -1) {
				FUNC1(stderr, "Invalid port '%s' in test mode"
				   " specification %s\n", p+6, p);
				return -1;
			}
		} else {
			FUNC1(stderr, "Invalid test mode specification %s\n",
			   p);
			return -1;
		}
	}
	return 0;
}