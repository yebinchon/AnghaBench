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
 int CAM_ARG_GET_SERIAL ; 
 int CAM_ARG_GET_STDINQ ; 
 int CAM_ARG_GET_XFERRATE ; 
 int CAM_ARG_INQ_MASK ; 
 int arglist ; 
 int FUNC0 (struct cam_device*) ; 
 int FUNC1 (int,char**,char*) ; 
 int FUNC2 (struct cam_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cam_device*,int,int,int) ; 

int
FUNC4(struct cam_device *device, int argc, char **argv,
	      char *combinedopt, int task_attr, int retry_count, int timeout)
{
	int c;
	int error = 0;

	while ((c = FUNC1(argc, argv, combinedopt)) != -1) {
		switch(c) {
		case 'D':
			arglist |= CAM_ARG_GET_STDINQ;
			break;
		case 'R':
			arglist |= CAM_ARG_GET_XFERRATE;
			break;
		case 'S':
			arglist |= CAM_ARG_GET_SERIAL;
			break;
		default:
			break;
		}
	}

	/*
	 * If the user didn't specify any inquiry options, he wants all of
	 * them.
	 */
	if ((arglist & CAM_ARG_INQ_MASK) == 0)
		arglist |= CAM_ARG_INQ_MASK;

	if (arglist & CAM_ARG_GET_STDINQ)
		error = FUNC2(device, task_attr, retry_count, timeout);

	if (error != 0)
		return (error);

	if (arglist & CAM_ARG_GET_SERIAL)
		FUNC3(device, task_attr, retry_count, timeout);

	if (arglist & CAM_ARG_GET_XFERRATE)
		error = FUNC0(device);

	return (error);
}