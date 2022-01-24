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
typedef  int uint8_t ;
struct TYPE_2__ {int bmRequestType; void* wLength; void* wIndex; void* wValue; int /*<<< orphan*/  bRequest; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__ setup ; 
 int /*<<< orphan*/  stderr ; 
 void* FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(int argc, char **argv)
{
  int idx;
  uint8_t rt = 0;

  for (idx = 0; argc != 0 && idx <= 6; argc--, idx++)
    switch (idx)
      {
      case 0:
	/* dir[ection]: i[n] | o[ut] */
	if (*argv[idx] == 'i')
	  rt |= 0x80;
	else if (*argv[idx] == 'o')
	  /* nop */;
	else
	  {
	    FUNC0(stderr, "request direction must be \"in\" or \"out\" (got %s)\n",
		    argv[idx]);
	    return -1;
	  }
	break;

      case 1:
	/* type: s[tandard] | c[lass] | v[endor] */
	if (*argv[idx] == 's')
	  /* nop */;
	else if (*argv[idx] == 'c')
	  rt |= 0x20;
	else if (*argv[idx] == 'v')
	  rt |= 0x40;
	else
	  {
	    FUNC0(stderr,
		    "request type must be one of \"standard\", \"class\", or \"vendor\" (got %s)\n",
		    argv[idx]);
	    return -1;
	  }
	break;

      case 2:
	/* rcpt: d[evice], i[nterface], e[ndpoint], o[ther] */
	if (*argv[idx] == 'd')
	  /* nop */;
	else if (*argv[idx] == 'i')
	  rt |= 1;
	else if (*argv[idx] == 'e')
	  rt |= 2;
	else if (*argv[idx] == 'o')
	  rt |= 3;
	else
	  {
	    FUNC0(stderr,
		    "recipient must be one of \"device\", \"interface\", \"endpoint\", or \"other\" (got %s)\n",
		    argv[idx]);
	    return -1;
	  }
	setup.bmRequestType = rt;
	break;

      case 3:
	setup.bRequest = FUNC1(argv[idx]);
	break;

      case 4:
	setup.wValue = FUNC2(argv[idx], 0, 0);
	break;

      case 5:
	setup.wIndex = FUNC2(argv[idx], 0, 0);
	break;

      case 6:
	setup.wLength = FUNC2(argv[idx], 0, 0);
	break;
      }

  return argc;
}