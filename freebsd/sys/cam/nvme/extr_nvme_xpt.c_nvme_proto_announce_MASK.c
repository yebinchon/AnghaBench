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
struct sbuf {int dummy; } ;
struct cam_ed {int /*<<< orphan*/  nvme_data; int /*<<< orphan*/  nvme_cdata; } ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  SBUF_FIXEDLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct sbuf*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*) ; 

__attribute__((used)) static void
FUNC4(struct cam_ed *device)
{
	struct sbuf	sb;
	char		buffer[120];

	FUNC2(&sb, buffer, sizeof(buffer), SBUF_FIXEDLEN);
	FUNC0(device->nvme_cdata, device->nvme_data, &sb);
	FUNC1(&sb);
	FUNC3(&sb);
}