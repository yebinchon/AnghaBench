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
typedef  int u32 ;
typedef  int u16 ;
struct ena_com_dev {int dummy; } ;

/* Variables and functions */
 int ENA_COM_TIMER_EXPIRED ; 
 int ENA_MMIO_READ_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENA_POLL_MS ; 
 int /*<<< orphan*/  ENA_REGS_DEV_STS_OFF ; 
 int ENA_REGS_DEV_STS_RESET_IN_PROGRESS_MASK ; 
 int FUNC1 (struct ena_com_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct ena_com_dev *ena_dev, u32 timeout,
				u16 exp_state)
{
	u32 val, i;

	/* Convert timeout from resolution of 100ms to ENA_POLL_MS */
	timeout = (timeout * 100) / ENA_POLL_MS;

	for (i = 0; i < timeout; i++) {
		val = FUNC1(ena_dev, ENA_REGS_DEV_STS_OFF);

		if (FUNC3(val == ENA_MMIO_READ_TIMEOUT)) {
			FUNC2("Reg read timeout occurred\n");
			return ENA_COM_TIMER_EXPIRED;
		}

		if ((val & ENA_REGS_DEV_STS_RESET_IN_PROGRESS_MASK) ==
			exp_state)
			return 0;

		FUNC0(ENA_POLL_MS);
	}

	return ENA_COM_TIMER_EXPIRED;
}