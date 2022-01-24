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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct ta_key {size_t len; int /*<<< orphan*/  type; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ta_key*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct ta_key*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct ta_key*
FUNC4(uint8_t* rdata, size_t rdata_len, uint16_t type)
{
	struct ta_key* k = (struct ta_key*)FUNC1(sizeof(*k));
	if(!k)
		return NULL;
	FUNC3(k, 0, sizeof(*k));
	k->data = FUNC2(rdata, rdata_len);
	if(!k->data) {
		FUNC0(k);
		return NULL;
	}
	k->len = rdata_len;
	k->type = type;
	return k;
}