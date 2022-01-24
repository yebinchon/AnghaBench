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
typedef  scalar_t__ uint32_t ;
struct subpage_print {scalar_t__ key; int /*<<< orphan*/  (* fn ) (void*,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (void*,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC2(void *buf, uint32_t subtype, uint8_t res, uint32_t size, struct subpage_print *sp, size_t nsp)
{
	size_t i;

	for (i = 0; i < nsp; i++, sp++) {
		if (sp->key == subtype) {
			sp->fn(buf, subtype, res, size);
			return;
		}
	}
	FUNC0("No handler for page type %x\n", subtype);
}