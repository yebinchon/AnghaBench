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
typedef  char uint8_t ;
typedef  int uint32_t ;
struct tube {int sr; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ EINTR ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (int,...) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

int FUNC8(struct tube* tube, uint8_t** buf, uint32_t* len, 
        int nonblock)
{
	ssize_t r, d;
	int fd = tube->sr;

	/* test */
	*len = 0;
	if(nonblock) {
		r = FUNC6(fd, len, sizeof(*len));
		if(r == -1) {
			if(errno==EINTR || errno==EAGAIN)
				return -1;
			FUNC4("tube msg read failed: %s", FUNC7(errno));
			return -1; /* we can still continue, perhaps */
		}
		if(r == 0) /* EOF */
			return 0;
	} else r = 0;
	if(!FUNC0(fd))
		return 0;
	/* read remainder */
	d = r;
	while(d != (ssize_t)sizeof(*len)) {
		if((r=FUNC6(fd, ((char*)len)+d, sizeof(*len)-d)) == -1) {
			FUNC4("tube msg read failed: %s", FUNC7(errno));
			(void)FUNC1(fd);
			return 0;
		}
		if(r == 0) /* EOF */ {
			(void)FUNC1(fd);
			return 0;
		}
		d += r;
	}
	FUNC3(*len < 65536*2);
	*buf = (uint8_t*)FUNC5(*len);
	if(!*buf) {
		FUNC4("tube read out of memory");
		(void)FUNC1(fd);
		return 0;
	}
	d = 0;
	while(d < (ssize_t)*len) {
		if((r=FUNC6(fd, (*buf)+d, (size_t)((ssize_t)*len)-d)) == -1) {
			FUNC4("tube msg read failed: %s", FUNC7(errno));
			(void)FUNC1(fd);
			FUNC2(*buf);
			return 0;
		}
		if(r == 0) { /* EOF */
			(void)FUNC1(fd);
			FUNC2(*buf);
			return 0;
		}
		d += r;
	}
	if(!FUNC1(fd)) {
		FUNC2(*buf);
		return 0;
	}
	return 1;
}