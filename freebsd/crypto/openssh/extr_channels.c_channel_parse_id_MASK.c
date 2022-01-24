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
typedef  scalar_t__ u_int32_t ;
struct ssh {int dummy; } ;

/* Variables and functions */
 scalar_t__ INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,scalar_t__,...) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ssh*,char*,char const*) ; 
 int FUNC3 (struct ssh*,scalar_t__*) ; 

__attribute__((used)) static int
FUNC4(struct ssh *ssh, const char *where, const char *what)
{
	u_int32_t id;
	int r;

	if ((r = FUNC3(ssh, &id)) != 0) {
		FUNC0("%s: parse id: %s", where, FUNC1(r));
		FUNC2(ssh, "Invalid %s message", what);
	}
	if (id > INT_MAX) {
		FUNC0("%s: bad channel id %u: %s", where, id, FUNC1(r));
		FUNC2(ssh, "Invalid %s channel id", what);
	}
	return (int)id;
}