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
struct nvme_namespace_data {int dummy; } ;
struct nvme_controller_data {int /*<<< orphan*/  sn; int /*<<< orphan*/  fr; int /*<<< orphan*/  mn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sbuf*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*,char*) ; 

void
FUNC2(const struct nvme_controller_data *cdata,
    const struct nvme_namespace_data *data, struct sbuf *sb)
{

	FUNC1(sb, "<");
	FUNC0(sb, cdata->mn, sizeof(cdata->mn), 0);
	FUNC1(sb, " ");
	FUNC0(sb, cdata->fr, sizeof(cdata->fr), 0);
	FUNC1(sb, " ");
	FUNC0(sb, cdata->sn, sizeof(cdata->sn), 0);
	FUNC1(sb, ">\n");
}