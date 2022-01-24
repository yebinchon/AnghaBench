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
typedef  int /*<<< orphan*/  vendor ;
typedef  int /*<<< orphan*/  u_char ;
struct fw_vendor {scalar_t__ type; scalar_t__ dev_type; int /*<<< orphan*/ * pattern; } ;
struct TYPE_2__ {scalar_t__ vendor; } ;
struct cam_device {TYPE_1__ inq_data; } ;
struct ata_params {int /*<<< orphan*/ * model; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ T_ANY ; 
 scalar_t__ VENDOR_ATA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 struct fw_vendor* vendors_list ; 

__attribute__((used)) static struct fw_vendor *
FUNC4(struct cam_device *cam_dev, struct ata_params *ident_buf)
{
	char vendor[42];
	struct fw_vendor *vp;

	if (cam_dev == NULL)
		return (NULL);

	if (ident_buf != NULL) {
		FUNC2((u_char *)vendor, ident_buf->model,
		    sizeof(ident_buf->model), sizeof(vendor));
		for (vp = vendors_list; vp->pattern != NULL; vp++) {
			if (vp->type == VENDOR_ATA)
				return (vp);
		}
	} else {
		FUNC2((u_char *)vendor, (u_char *)cam_dev->inq_data.vendor,
		    sizeof(cam_dev->inq_data.vendor), sizeof(vendor));
	}
	for (vp = vendors_list; vp->pattern != NULL; vp++) {
		if (!FUNC1((const u_char *)vendor,
		    (const u_char *)vp->pattern, FUNC3(vendor))) {
			if ((vp->dev_type == T_ANY)
			 || (vp->dev_type == FUNC0(&cam_dev->inq_data)))
				break;
		}
	}
	return (vp);
}