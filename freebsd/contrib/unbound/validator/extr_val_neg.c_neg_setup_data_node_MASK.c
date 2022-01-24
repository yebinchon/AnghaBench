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
struct TYPE_2__ {struct val_neg_data* key; } ;
struct val_neg_data {size_t len; int labs; int /*<<< orphan*/  name; TYPE_1__ node; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct val_neg_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static struct val_neg_data* FUNC3(
	uint8_t* nm, size_t nm_len, int labs)
{
	struct val_neg_data* el;
	el = (struct val_neg_data*)FUNC0(1, sizeof(*el));
	if(!el) {
		return NULL;
	}
	el->node.key = el;
	el->name = FUNC2(nm, nm_len);
	if(!el->name) {
		FUNC1(el);
		return NULL;
	}
	el->len = nm_len;
	el->labs = labs;
	return el;
}