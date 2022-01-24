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
typedef  int /*<<< orphan*/  u8 ;

/* Variables and functions */
 scalar_t__ ENOSYS ; 
 int /*<<< orphan*/  GRND_NONBLOCK ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int O_NONBLOCK ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*) ; 
 int /*<<< orphan*/ * random_entropy_file ; 
 scalar_t__ random_fd ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  random_read_fd ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 

void FUNC9(const char *entropy_file)
{
	FUNC3(random_entropy_file);
	if (entropy_file)
		random_entropy_file = FUNC4(entropy_file);
	else
		random_entropy_file = NULL;
	FUNC5();

#ifdef __linux__
	if (random_fd >= 0)
		return;

#ifdef CONFIG_GETRANDOM
	{
		u8 dummy;

		if (getrandom(&dummy, 0, GRND_NONBLOCK) == 0 ||
		    errno != ENOSYS) {
			wpa_printf(MSG_DEBUG,
				   "random: getrandom() support available");
			return;
		}
	}
#endif /* CONFIG_GETRANDOM */

	random_fd = FUNC2("/dev/random", O_RDONLY | O_NONBLOCK);
	if (random_fd < 0) {
		FUNC8(MSG_ERROR, "random: Cannot open /dev/random: %s",
			   FUNC7(errno));
		return;
	}
	FUNC8(MSG_DEBUG, "random: Trying to read entropy from "
		   "/dev/random");

	FUNC0(random_fd, random_read_fd, NULL, NULL);
#endif /* __linux__ */

	FUNC6();
}