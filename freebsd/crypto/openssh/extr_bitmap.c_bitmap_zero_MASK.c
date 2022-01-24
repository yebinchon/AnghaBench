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
struct bitmap {int len; scalar_t__ top; int /*<<< orphan*/  d; } ;

/* Variables and functions */
 int BITMAP_BYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC1(struct bitmap *b)
{
	FUNC0(b->d, 0, b->len * BITMAP_BYTES);
	b->top = 0;
}