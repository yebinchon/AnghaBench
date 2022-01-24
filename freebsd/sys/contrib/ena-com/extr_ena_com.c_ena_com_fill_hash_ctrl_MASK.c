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
typedef  int u16 ;
struct ena_rss {struct ena_admin_feature_rss_hash_control* hash_ctrl; } ;
struct ena_com_dev {struct ena_rss rss; } ;
struct ena_admin_feature_rss_hash_control {TYPE_2__* selected_fields; TYPE_1__* supported_fields; } ;
typedef  enum ena_admin_flow_hash_proto { ____Placeholder_ena_admin_flow_hash_proto } ena_admin_flow_hash_proto ;
struct TYPE_4__ {int fields; } ;
struct TYPE_3__ {int fields; } ;

/* Variables and functions */
 int ENA_ADMIN_RSS_PROTO_NUM ; 
 int ENA_COM_INVAL ; 
 int FUNC0 (struct ena_com_dev*,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ena_com_dev*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 scalar_t__ FUNC3 (int) ; 

int FUNC4(struct ena_com_dev *ena_dev,
			   enum ena_admin_flow_hash_proto proto,
			   u16 hash_fields)
{
	struct ena_rss *rss = &ena_dev->rss;
	struct ena_admin_feature_rss_hash_control *hash_ctrl = rss->hash_ctrl;
	u16 supported_fields;
	int rc;

	if (proto >= ENA_ADMIN_RSS_PROTO_NUM) {
		FUNC2("Invalid proto num (%u)\n", proto);
		return ENA_COM_INVAL;
	}

	/* Get the ctrl table */
	rc = FUNC0(ena_dev, proto, NULL);
	if (FUNC3(rc))
		return rc;

	/* Make sure all the fields are supported */
	supported_fields = hash_ctrl->supported_fields[proto].fields;
	if ((hash_fields & supported_fields) != hash_fields) {
		FUNC2("proto %d doesn't support the required fields %x. supports only: %x\n",
			    proto, hash_fields, supported_fields);
	}

	hash_ctrl->selected_fields[proto].fields = hash_fields;

	rc = FUNC1(ena_dev);

	/* In case of failure, restore the old hash ctrl */
	if (FUNC3(rc))
		FUNC0(ena_dev, 0, NULL);

	return 0;
}