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
struct cam_path {int dummy; } ;
typedef  int /*<<< orphan*/  cam_status ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_REQ_CMP ; 
 int /*<<< orphan*/  CAM_RESRC_UNAVAIL ; 
 int /*<<< orphan*/  M_CAMPATH ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cam_path*,struct cam_path*) ; 

cam_status
FUNC2(struct cam_path **new_path_ptr, struct cam_path *path)
{
	struct	   cam_path *new_path;

	new_path = (struct cam_path *)FUNC0(sizeof(*path), M_CAMPATH, M_NOWAIT);
	if (new_path == NULL)
		return(CAM_RESRC_UNAVAIL);
	FUNC1(new_path, path);
	*new_path_ptr = new_path;
	return (CAM_REQ_CMP);
}