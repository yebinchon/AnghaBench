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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_2__ {struct val_neg_zone* key; } ;
struct val_neg_zone {size_t len; int labs; int /*<<< orphan*/  tree; int /*<<< orphan*/  dclass; int /*<<< orphan*/  name; TYPE_1__ node; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct val_neg_zone*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  val_neg_data_compare ; 

__attribute__((used)) static struct val_neg_zone* FUNC4(
	uint8_t* nm, size_t nm_len, int labs, uint16_t dclass)
{
	struct val_neg_zone* zone = 
		(struct val_neg_zone*)FUNC0(1, sizeof(*zone));
	if(!zone) {
		return NULL;
	}
	zone->node.key = zone;
	zone->name = FUNC2(nm, nm_len);
	if(!zone->name) {
		FUNC1(zone);
		return NULL;
	}
	zone->len = nm_len;
	zone->labs = labs;
	zone->dclass = dclass;

	FUNC3(&zone->tree, &val_neg_data_compare);
	return zone;
}