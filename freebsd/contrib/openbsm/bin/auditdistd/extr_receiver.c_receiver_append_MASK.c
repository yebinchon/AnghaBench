#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int ssize_t ;
struct TYPE_2__ {int adh_trail_fd; int /*<<< orphan*/  adh_trail_name; int /*<<< orphan*/  adh_directory; } ;

/* Variables and functions */
 int ADIST_ERROR_WRITE ; 
 int ADIST_ERROR_WRONG_ORDER ; 
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* adhost ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int,char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int,unsigned char const*,size_t) ; 

__attribute__((used)) static int
FUNC5(const unsigned char *data, size_t size)
{
	ssize_t done;
	size_t osize;

	/* We should have opened trail file. */
	if (adhost->adh_trail_fd == -1) {
		FUNC3("Sender requested append without first opening file.");
		return (ADIST_ERROR_WRONG_ORDER);
	}

	osize = size;
	while (size > 0) {
		done = FUNC4(adhost->adh_trail_fd, data, size);
		if (done == -1) {
			if (errno == EINTR)
				continue;
			FUNC2(LOG_ERR, "Write to \"%s/%s\" failed",
			    adhost->adh_directory, adhost->adh_trail_name);
			FUNC0(errno > 0);
			return (ADIST_ERROR_WRITE);
		}
		FUNC1(3, "Wrote %zd bytes into \"%s/%s\".", done,
		    adhost->adh_directory, adhost->adh_trail_name);
		size -= done;
	}
	FUNC1(2, "Appended %zu bytes to file \"%s/%s\".",
	    osize, adhost->adh_directory, adhost->adh_trail_name);
	return (0);
}