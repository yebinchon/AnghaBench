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
typedef  scalar_t__ u32 ;
struct ena_extra_properties_strings {int size; int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  virt_addr; int /*<<< orphan*/  dma_handle; } ;
struct ena_com_dev {int /*<<< orphan*/  dmadev; struct ena_extra_properties_strings extra_properties_strings; } ;
struct TYPE_3__ {int count; } ;
struct TYPE_4__ {TYPE_1__ extra_properties_strings; } ;
struct ena_admin_get_feat_resp {TYPE_2__ u; } ;

/* Variables and functions */
 int ENA_ADMIN_EXTRA_PROPERTIES_COUNT ; 
 int /*<<< orphan*/  ENA_ADMIN_EXTRA_PROPERTIES_STRINGS ; 
 int ENA_ADMIN_EXTRA_PROPERTIES_STRING_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ena_com_dev*) ; 
 scalar_t__ FUNC2 (struct ena_com_dev*,struct ena_admin_get_feat_resp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int) ; 

int FUNC6(struct ena_com_dev *ena_dev)
{
	struct ena_admin_get_feat_resp resp;
	struct ena_extra_properties_strings *extra_properties_strings =
			&ena_dev->extra_properties_strings;
	u32 rc;
	extra_properties_strings->size = ENA_ADMIN_EXTRA_PROPERTIES_COUNT *
		ENA_ADMIN_EXTRA_PROPERTIES_STRING_LEN;

	FUNC0(ena_dev->dmadev,
			       extra_properties_strings->size,
			       extra_properties_strings->virt_addr,
			       extra_properties_strings->dma_addr,
			       extra_properties_strings->dma_handle);
	if (FUNC5(!extra_properties_strings->virt_addr)) {
		FUNC4("Failed to allocate extra properties strings\n");
		return 0;
	}

	rc = FUNC2(ena_dev, &resp,
				    ENA_ADMIN_EXTRA_PROPERTIES_STRINGS,
				    extra_properties_strings->dma_addr,
				    extra_properties_strings->size, 0);
	if (rc) {
		FUNC3("Failed to get extra properties strings\n");
		goto err;
	}

	return resp.u.extra_properties_strings.count;
err:
	FUNC1(ena_dev);
	return 0;
}