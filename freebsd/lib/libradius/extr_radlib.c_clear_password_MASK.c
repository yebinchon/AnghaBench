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
struct rad_handle {scalar_t__ pass_len; scalar_t__ pass_pos; int /*<<< orphan*/  pass; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC1(struct rad_handle *h)
{
	if (h->pass_len != 0) {
		FUNC0(h->pass, 0, h->pass_len);
		h->pass_len = 0;
	}
	h->pass_pos = 0;
}