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
struct a10hdmiaudio_chinfo {TYPE_1__* parent; scalar_t__ run; int /*<<< orphan*/  blocksize; scalar_t__ pos; scalar_t__ physaddr; int /*<<< orphan*/  dmachan; int /*<<< orphan*/  dmac; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TX_FIFO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC2(struct a10hdmiaudio_chinfo *ch)
{
	int error;

	error = FUNC0(ch->dmac, ch->dmachan,
	    ch->physaddr + ch->pos, TX_FIFO, ch->blocksize);
	if (error) {
		ch->run = 0;
		FUNC1(ch->parent->dev, "DMA transfer failed: %d\n",
		    error);
	}
}