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
struct pfr_buffer {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pfr_buffer*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 (struct pfr_buffer*,char*,int,scalar_t__ (*) (struct pfr_buffer*,int /*<<< orphan*/ ,int)) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

int
FUNC3(struct pfr_buffer *b, int argc, char *argv[], char *file,
    int nonetwork)
{
	while (argc--)
		if (FUNC0(b, *argv++, nonetwork)) {
			if (errno)
				FUNC2("cannot decode %s", argv[-1]);
			return (-1);
		}
	if (FUNC1(b, file, nonetwork, append_addr)) {
		FUNC2("cannot load %s", file);
		return (-1);
	}
	return (0);
}