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
struct termios {int c_iflag; int c_lflag; int* c_cc; int /*<<< orphan*/  c_oflag; } ;

/* Variables and functions */
 int ECHO ; 
 int ECHOE ; 
 int ECHOK ; 
 int ECHONL ; 
 int ICANON ; 
 int ICRNL ; 
 int IEXTEN ; 
 int IGNCR ; 
 int IGNPAR ; 
 int INLCR ; 
 int ISIG ; 
 int ISTRIP ; 
 int IUCLC ; 
 int IXANY ; 
 int IXOFF ; 
 int IXON ; 
 int /*<<< orphan*/  OPOST ; 
 int /*<<< orphan*/  TCSADRAIN ; 
 size_t VMIN ; 
 size_t VTIME ; 
 int _in_raw_mode ; 
 struct termios _saved_tio ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  stdin ; 
 int FUNC2 (int /*<<< orphan*/ ,struct termios*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct termios*) ; 

void
FUNC4(int quiet)
{
	struct termios tio;

	if (FUNC2(FUNC0(stdin), &tio) == -1) {
		if (!quiet)
			FUNC1("tcgetattr");
		return;
	}
	_saved_tio = tio;
	tio.c_iflag |= IGNPAR;
	tio.c_iflag &= ~(ISTRIP | INLCR | IGNCR | ICRNL | IXON | IXANY | IXOFF);
#ifdef IUCLC
	tio.c_iflag &= ~IUCLC;
#endif
	tio.c_lflag &= ~(ISIG | ICANON | ECHO | ECHOE | ECHOK | ECHONL);
#ifdef IEXTEN
	tio.c_lflag &= ~IEXTEN;
#endif
	tio.c_oflag &= ~OPOST;
	tio.c_cc[VMIN] = 1;
	tio.c_cc[VTIME] = 0;
	if (FUNC3(FUNC0(stdin), TCSADRAIN, &tio) == -1) {
		if (!quiet)
			FUNC1("tcsetattr");
	} else
		_in_raw_mode = 1;
}