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
struct a10hdmiaudio_chinfo {scalar_t__ pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct a10hdmiaudio_chinfo*) ; 
 int /*<<< orphan*/  FUNC1 (struct a10hdmiaudio_chinfo*) ; 

__attribute__((used)) static void
FUNC2(struct a10hdmiaudio_chinfo *ch)
{
	ch->pos = 0;

	/* Configure DMA channel */
	FUNC0(ch);

	/* Start DMA transfer */
	FUNC1(ch);
}