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
struct al_udma {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct al_udma*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  axi_data_fifo_status ; 
 int /*<<< orphan*/  check_en ; 
 int /*<<< orphan*/  err_log_mask ; 
 int /*<<< orphan*/  fifo_en ; 
 int /*<<< orphan*/  log_0 ; 
 int /*<<< orphan*/  log_1 ; 
 int /*<<< orphan*/  log_2 ; 
 int /*<<< orphan*/  log_3 ; 
 int /*<<< orphan*/  s2m ; 
 int /*<<< orphan*/  s_data_fifo_status ; 
 int /*<<< orphan*/  s_header_fifo_status ; 
 int /*<<< orphan*/  state ; 
 int /*<<< orphan*/  stream_cfg ; 
 int /*<<< orphan*/  unack_fifo_status ; 

__attribute__((used)) static void FUNC2(struct al_udma *udma)
{
	FUNC1("S2M general regs:\n");
	FUNC0(udma, " ", "\n", s2m, s2m, state);
	FUNC0(udma, " ", "\n", s2m, s2m, err_log_mask);
	FUNC0(udma, " ", "\n", s2m, s2m, log_0);
	FUNC0(udma, " ", "\n", s2m, s2m, log_1);
	FUNC0(udma, " ", "\n", s2m, s2m, log_2);
	FUNC0(udma, " ", "\n", s2m, s2m, log_3);
	FUNC0(udma, " ", "\n", s2m, s2m, s_data_fifo_status);
	FUNC0(udma, " ", "\n", s2m, s2m, s_header_fifo_status);
	FUNC0(udma, " ", "\n", s2m, s2m, axi_data_fifo_status);
	FUNC0(udma, " ", "\n", s2m, s2m, unack_fifo_status);
	FUNC0(udma, " ", "\n", s2m, s2m, check_en);
	FUNC0(udma, " ", "\n", s2m, s2m, fifo_en);
	FUNC0(udma, " ", "\n", s2m, s2m, stream_cfg);
}