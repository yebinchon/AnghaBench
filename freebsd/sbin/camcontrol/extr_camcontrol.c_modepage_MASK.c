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
struct cam_device {int dummy; } ;

/* Variables and functions */
 int SMS_ALL_PAGES_PAGE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int FUNC1 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct cam_device*,int,int,int,int,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cam_device*,int,int,int,int,int,int,int) ; 
 char* optarg ; 
 int /*<<< orphan*/  FUNC4 (char**,char*) ; 
 int FUNC5 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC6(struct cam_device *device, int argc, char **argv, char *combinedopt,
	 int task_attr, int retry_count, int timeout)
{
	char *str_subpage;
	int c, page = -1, subpage = 0, pc = 0, llbaa = 0;
	int binary = 0, cdb_len = 10, dbd = 0, desc = 0, edit = 0, list = 0;

	while ((c = FUNC1(argc, argv, combinedopt)) != -1) {
		switch(c) {
		case '6':
			cdb_len = 6;
			break;
		case 'b':
			binary = 1;
			break;
		case 'd':
			dbd = 1;
			break;
		case 'e':
			edit = 1;
			break;
		case 'l':
			list++;
			break;
		case 'm':
			str_subpage = optarg;
			FUNC4(&str_subpage, ",");
			page = FUNC5(optarg, NULL, 0);
			if (str_subpage)
			    subpage = FUNC5(str_subpage, NULL, 0);
			if (page < 0 || page > 0x3f)
				FUNC0(1, "invalid mode page %d", page);
			if (subpage < 0 || subpage > 0xff)
				FUNC0(1, "invalid mode subpage %d", subpage);
			break;
		case 'D':
			desc = 1;
			break;
		case 'L':
			llbaa = 1;
			break;
		case 'P':
			pc = FUNC5(optarg, NULL, 0);
			if ((pc < 0) || (pc > 3))
				FUNC0(1, "invalid page control field %d", pc);
			break;
		default:
			break;
		}
	}

	if (desc && page == -1)
		page = SMS_ALL_PAGES_PAGE;

	if (page == -1 && list == 0)
		FUNC0(1, "you must specify a mode page!");

	if (dbd && desc)
		FUNC0(1, "-d and -D are incompatible!");

	if (llbaa && cdb_len != 10)
		FUNC0(1, "LLBAA bit is not present in MODE SENSE(6)!");

	if (list != 0) {
		FUNC3(device, cdb_len, dbd, pc, list > 1, task_attr,
		    retry_count, timeout);
	} else {
		FUNC2(device, cdb_len, desc, dbd, llbaa, pc, page, subpage,
		    edit, binary, task_attr, retry_count, timeout);
	}
}