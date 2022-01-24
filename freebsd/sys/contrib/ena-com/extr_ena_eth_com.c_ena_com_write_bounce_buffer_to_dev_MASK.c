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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct ena_com_llq_info {int desc_list_entry_size; } ;
struct TYPE_2__ {scalar_t__ pbuf_dev_addr; } ;
struct ena_com_io_sq {int tail; int q_depth; int phase; TYPE_1__ desc_addr; int /*<<< orphan*/  entries_in_tx_burst_left; int /*<<< orphan*/  qid; struct ena_com_llq_info llq_info; } ;

/* Variables and functions */
 int ENA_COM_NO_SPACE ; 
 int ENA_COM_OK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (struct ena_com_io_sq*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static inline int FUNC6(struct ena_com_io_sq *io_sq,
						     u8 *bounce_buffer)
{
	struct ena_com_llq_info *llq_info = &io_sq->llq_info;

	u16 dst_tail_mask;
	u32 dst_offset;

	dst_tail_mask = io_sq->tail & (io_sq->q_depth - 1);
	dst_offset = dst_tail_mask * llq_info->desc_list_entry_size;

	if (FUNC3(io_sq)) {
		if (FUNC4(!io_sq->entries_in_tx_burst_left)) {
			FUNC2("Error: trying to send more packets than tx burst allows\n");
			return ENA_COM_NO_SPACE;
		}

		io_sq->entries_in_tx_burst_left--;
		FUNC1("decreasing entries_in_tx_burst_left of queue %d to %d\n",
			    io_sq->qid, io_sq->entries_in_tx_burst_left);
	}

	/* Make sure everything was written into the bounce buffer before
	 * writing the bounce buffer to the device
	 */
	FUNC5();

	/* The line is completed. Copy it to dev */
	FUNC0(io_sq->desc_addr.pbuf_dev_addr + dst_offset,
				bounce_buffer,
				llq_info->desc_list_entry_size);

	io_sq->tail++;

	/* Switch phase bit in case of wrap around */
	if (FUNC4((io_sq->tail & (io_sq->q_depth - 1)) == 0))
		io_sq->phase ^= 1;

	return ENA_COM_OK;
}