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
struct sgttyb {int sg_flags; scalar_t__ sg_kill; scalar_t__ sg_erase; int /*<<< orphan*/  sg_ospeed; int /*<<< orphan*/  sg_ispeed; } ;

/* Variables and functions */
 int /*<<< orphan*/  B300 ; 
 int CHULDISC ; 
 int EVENP ; 
 int /*<<< orphan*/  I_POP ; 
 int /*<<< orphan*/  I_PUSH ; 
 int ODDP ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int RAW ; 
 int /*<<< orphan*/  TIOCEXCL ; 
 int /*<<< orphan*/  TIOCSETD ; 
 int /*<<< orphan*/  TIOCSETP ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ usechuldisc ; 

int
FUNC4(
	char *dev
	)
{
	int s;
	struct sgttyb ttyb;

	if (debug)
	    (void) FUNC1(stderr, "Doing open...");
	if ((s = FUNC3(dev, O_RDONLY, 0777)) < 0)
	    FUNC0("open(%s)", dev, "");
	if (debug)
	    (void) FUNC1(stderr, "open okay\n");

	if (debug)
	    (void) FUNC1(stderr, "Setting exclusive use...");
	if (FUNC2(s, TIOCEXCL, (char *)0) < 0)
	    FUNC0("ioctl(TIOCEXCL)", "", "");
	if (debug)
	    (void) FUNC1(stderr, "done\n");
	
	ttyb.sg_ispeed = ttyb.sg_ospeed = B300;
	ttyb.sg_erase = ttyb.sg_kill = 0;
	ttyb.sg_flags = EVENP|ODDP|RAW;
	if (debug)
	    (void) FUNC1(stderr, "Setting baud rate et al...");
	if (FUNC2(s, TIOCSETP, (char *)&ttyb) < 0)
	    FUNC0("ioctl(TIOCSETP, raw)", "", "");
	if (debug)
	    (void) FUNC1(stderr, "done\n");

#ifdef CHULDISC
	if (usechuldisc) {
		int ldisc;

		if (debug)
		    (void) fprintf(stderr, "Switching to CHU ldisc...");
		ldisc = CHULDISC;
		if (ioctl(s, TIOCSETD, (char *)&ldisc) < 0)
		    error("ioctl(TIOCSETD, CHULDISC)", "", "");
		if (debug)
		    (void) fprintf(stderr, "okay\n");
	}
#endif
#ifdef STREAM
	if (usechuldisc) {

		if (debug)
		    (void) fprintf(stderr, "Poping off streams...");
		while (ioctl(s, I_POP, 0) >=0) ;
		if (debug)
		    (void) fprintf(stderr, "okay\n");
		if (debug)
		    (void) fprintf(stderr, "Pushing CHU stream...");
		if (ioctl(s, I_PUSH, "chu") < 0)
		    error("ioctl(I_PUSH, \"chu\")", "", "");
		if (debug)
		    (void) fprintf(stderr, "okay\n");
	}
#endif
	return s;
}