#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_7__ {int head; int tail; TYPE_1__* entry; } ;
typedef  TYPE_2__ cvmx_usb_tx_fifo_t ;
struct TYPE_8__ {int /*<<< orphan*/  index; } ;
typedef  TYPE_3__ cvmx_usb_internal_state_t ;
struct TYPE_6__ {int address; int size; int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int MAX_CHANNELS ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(cvmx_usb_internal_state_t *usb, cvmx_usb_tx_fifo_t *fifo, int available)
{
    FUNC1();
    FUNC2("%p", usb);
    FUNC2("%p", fifo);
    FUNC2("%d", available);

    /* We're done either when there isn't anymore space or the software FIFO
        is empty */
    while (available && (fifo->head != fifo->tail))
    {
        int i = fifo->tail;
        const uint32_t *ptr = FUNC5(fifo->entry[i].address);
        uint64_t csr_address = FUNC4(fifo->entry[i].channel, usb->index) ^ 4;
        int words = available;

        /* Limit the amount of data to waht the SW fifo has */
        if (fifo->entry[i].size <= available)
        {
            words = fifo->entry[i].size;
            fifo->tail++;
            if (fifo->tail > MAX_CHANNELS)
                fifo->tail = 0;
        }

        /* Update the next locations and counts */
        available -= words;
        fifo->entry[i].address += words * 4;
        fifo->entry[i].size -= words;

        /* Write the HW fifo data. The read every three writes is due
            to an errata on CN3XXX chips */
        while (words > 3)
        {
            FUNC7(csr_address, *ptr++);
            FUNC7(csr_address, *ptr++);
            FUNC7(csr_address, *ptr++);
            FUNC6(FUNC0(usb->index));
            words -= 3;
        }
        FUNC7(csr_address, *ptr++);
        if (--words)
        {
            FUNC7(csr_address, *ptr++);
            if (--words)
                FUNC7(csr_address, *ptr++);
        }
        FUNC6(FUNC0(usb->index));
    }
    FUNC3(fifo->head != fifo->tail);
}