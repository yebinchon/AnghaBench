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
struct termios {int c_iflag; int c_oflag; int c_cflag; int c_lflag; scalar_t__* c_cc; } ;

/* Variables and functions */
 int CREAD ; 
 int CS8 ; 
 int ECHO ; 
 int ICANON ; 
 int IGNBRK ; 
 int IGNPAR ; 
 int ISIG ; 
 int /*<<< orphan*/  KDGKBMODE ; 
 int /*<<< orphan*/  KDSKBMODE ; 
 int /*<<< orphan*/ * K_CODE ; 
 int /*<<< orphan*/ * K_RAW ; 
 int /*<<< orphan*/ * K_XLATE ; 
 int ONLCR ; 
 int OPOST ; 
 int TCSAFLUSH ; 
 int TCSANOW ; 
 int /*<<< orphan*/  VGLKeyboardMode ; 
 struct termios VGLKeyboardTty ; 
#define  VGL_CODEKEYS 130 
#define  VGL_RAWKEYS 129 
#define  VGL_XLATEKEYS 128 
 size_t VMIN ; 
 size_t VTIME ; 
 int /*<<< orphan*/  FUNC0 (struct termios*) ; 
 int /*<<< orphan*/  FUNC1 (struct termios*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct termios*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct termios*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,struct termios*) ; 

int
FUNC6(int mode)
{
  static struct termios term;

  FUNC3(0, KDGKBMODE, &VGLKeyboardMode);
  FUNC4(0, &VGLKeyboardTty);

  term = VGLKeyboardTty;
  FUNC0(&term);
  term.c_iflag = IGNPAR | IGNBRK;
  term.c_oflag = OPOST | ONLCR;
  term.c_cflag = CREAD | CS8;
  term.c_lflag &= ~(ICANON | ECHO | ISIG);
  term.c_cc[VTIME] = 0;
  term.c_cc[VMIN] = 0;
  FUNC1(&term, 9600);
  FUNC2(&term, 9600);
  FUNC5(0, TCSANOW | TCSAFLUSH, &term);

  switch (mode) {
  case VGL_RAWKEYS:
    FUNC3(0, KDSKBMODE, K_RAW);
    break;
  case VGL_CODEKEYS:
    FUNC3(0, KDSKBMODE, K_CODE);
    break;
  case VGL_XLATEKEYS:
    FUNC3(0, KDSKBMODE, K_XLATE);
    break;
  }
  return 0;
}