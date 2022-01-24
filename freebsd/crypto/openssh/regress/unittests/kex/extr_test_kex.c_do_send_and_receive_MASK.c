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
typedef  scalar_t__ u_char ;
struct ssh {int dummy; } ;

/* Variables and functions */
 scalar_t__ do_debug ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (struct ssh*,scalar_t__ const*,size_t) ; 
 int FUNC4 (struct ssh*,size_t) ; 
 scalar_t__* FUNC5 (struct ssh*,size_t*) ; 
 int FUNC6 (struct ssh*,scalar_t__*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC7(struct ssh *from, struct ssh *to)
{
	u_char type;
	size_t len;
	const u_char *buf;
	int r;

	for (;;) {
		if ((r = FUNC6(from, &type)) != 0) {
			FUNC0(stderr, "ssh_packet_next: %s\n", FUNC2(r));
			return r;
		}
		if (type != 0)
			return 0;
		buf = FUNC5(from, &len);
		if (do_debug)
			FUNC1("%zu", len);
		if (len == 0)
			return 0;
		if ((r = FUNC4(from, len)) != 0 ||
		    (r = FUNC3(to, buf, len)) != 0)
			return r;
	}
}