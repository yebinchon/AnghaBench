#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ flags; } ;
struct TYPE_3__ {int path_id; int target_id; int status; scalar_t__ target_lun; int /*<<< orphan*/  func_code; } ;
union ccb {TYPE_2__ cdbg; TYPE_1__ ccb_h; } ;
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int target_id_t ;
typedef  int path_id_t ;
typedef  scalar_t__ lun_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAMIOCOMMAND ; 
 int CAM_ARG_DEBUG_CDB ; 
 int CAM_ARG_DEBUG_INFO ; 
 int CAM_ARG_DEBUG_PERIPH ; 
 int CAM_ARG_DEBUG_PROBE ; 
 int CAM_ARG_DEBUG_SUBTRACE ; 
 int CAM_ARG_DEBUG_TRACE ; 
 int CAM_ARG_DEBUG_XPT ; 
 int CAM_BUS_WILDCARD ; 
 scalar_t__ CAM_DEBUG_CDB ; 
 scalar_t__ CAM_DEBUG_INFO ; 
 scalar_t__ CAM_DEBUG_NONE ; 
 scalar_t__ CAM_DEBUG_PERIPH ; 
 scalar_t__ CAM_DEBUG_PROBE ; 
 scalar_t__ CAM_DEBUG_SUBTRACE ; 
 scalar_t__ CAM_DEBUG_TRACE ; 
 scalar_t__ CAM_DEBUG_XPT ; 
 int CAM_FUNC_NOTAVAIL ; 
 scalar_t__ CAM_LUN_WILDCARD ; 
 int CAM_REQ_CMP ; 
 int CAM_STATUS_MASK ; 
 int CAM_TARGET_WILDCARD ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  XPT_DEBUG ; 
 int XPT_DEVICE ; 
 int arglist ; 
 int /*<<< orphan*/  FUNC0 (union ccb*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (int,char**,char*) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,union ccb*) ; 
 scalar_t__ FUNC5 (char) ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ optind ; 
 int FUNC7 (char*,int*,int*,scalar_t__*,int*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 

__attribute__((used)) static int
FUNC11(int argc, char **argv, char *combinedopt)
{
	int c, fd;
	path_id_t bus = CAM_BUS_WILDCARD;
	target_id_t target = CAM_TARGET_WILDCARD;
	lun_id_t lun = CAM_LUN_WILDCARD;
	char *tstr;
	union ccb ccb;
	int error = 0, rv;

	FUNC0(&ccb, sizeof(union ccb));

	while ((c = FUNC3(argc, argv, combinedopt)) != -1) {
		switch(c) {
		case 'I':
			arglist |= CAM_ARG_DEBUG_INFO;
			ccb.cdbg.flags |= CAM_DEBUG_INFO;
			break;
		case 'P':
			arglist |= CAM_ARG_DEBUG_PERIPH;
			ccb.cdbg.flags |= CAM_DEBUG_PERIPH;
			break;
		case 'S':
			arglist |= CAM_ARG_DEBUG_SUBTRACE;
			ccb.cdbg.flags |= CAM_DEBUG_SUBTRACE;
			break;
		case 'T':
			arglist |= CAM_ARG_DEBUG_TRACE;
			ccb.cdbg.flags |= CAM_DEBUG_TRACE;
			break;
		case 'X':
			arglist |= CAM_ARG_DEBUG_XPT;
			ccb.cdbg.flags |= CAM_DEBUG_XPT;
			break;
		case 'c':
			arglist |= CAM_ARG_DEBUG_CDB;
			ccb.cdbg.flags |= CAM_DEBUG_CDB;
			break;
		case 'p':
			arglist |= CAM_ARG_DEBUG_PROBE;
			ccb.cdbg.flags |= CAM_DEBUG_PROBE;
			break;
		default:
			break;
		}
	}

	argc -= optind;
	argv += optind;

	if (argc <= 0) {
		FUNC10("you must specify \"off\", \"all\" or a bus,");
		FUNC10("bus:target, bus:target:lun or periph");
		return (1);
	}

	tstr = *argv;
	while (FUNC5(*tstr) && (*tstr != '\0'))
		tstr++;

	if (FUNC8(tstr, "off", 3) == 0) {
		ccb.cdbg.flags = CAM_DEBUG_NONE;
		arglist &= ~(CAM_ARG_DEBUG_INFO|CAM_ARG_DEBUG_PERIPH|
			     CAM_ARG_DEBUG_TRACE|CAM_ARG_DEBUG_SUBTRACE|
			     CAM_ARG_DEBUG_XPT|CAM_ARG_DEBUG_PROBE);
	} else {
		rv = FUNC7(tstr, &bus, &target, &lun, &arglist);
		if (rv < 1) {
			FUNC10("you must specify \"all\", \"off\", or a bus,");
			FUNC10("bus:target, bus:target:lun or periph to debug");
			return (1);
		}
	}

	if ((fd = FUNC6(XPT_DEVICE, O_RDWR)) < 0) {
		FUNC10("error opening transport layer device %s", XPT_DEVICE);
		FUNC9("%s", XPT_DEVICE);
		return (1);
	}

	ccb.ccb_h.func_code = XPT_DEBUG;
	ccb.ccb_h.path_id = bus;
	ccb.ccb_h.target_id = target;
	ccb.ccb_h.target_lun = lun;

	if (FUNC4(fd, CAMIOCOMMAND, &ccb) == -1) {
		FUNC9("CAMIOCOMMAND ioctl failed");
		error = 1;
	} else {
		if ((ccb.ccb_h.status & CAM_STATUS_MASK) ==
		     CAM_FUNC_NOTAVAIL) {
			FUNC10("CAM debugging not available");
			FUNC10("you need to put options CAMDEBUG in"
			      " your kernel config file!");
			error = 1;
		} else if ((ccb.ccb_h.status & CAM_STATUS_MASK) !=
			    CAM_REQ_CMP) {
			FUNC10("XPT_DEBUG CCB failed with status %#x",
			      ccb.ccb_h.status);
			error = 1;
		} else {
			if (ccb.cdbg.flags == CAM_DEBUG_NONE) {
				FUNC2(stderr,
					"Debugging turned off\n");
			} else {
				FUNC2(stderr,
					"Debugging enabled for "
					"%d:%d:%jd\n",
					bus, target, (uintmax_t)lun);
			}
		}
	}
	FUNC1(fd);

	return (error);
}