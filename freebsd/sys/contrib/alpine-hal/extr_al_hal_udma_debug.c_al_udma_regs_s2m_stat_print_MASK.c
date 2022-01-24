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
 int /*<<< orphan*/  ack_pkts ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  comp_desc ; 
 int /*<<< orphan*/  comp_pkt ; 
 int /*<<< orphan*/  drop_pkt ; 
 int /*<<< orphan*/  prefed_desc ; 
 int /*<<< orphan*/  rx_bytes_high ; 
 int /*<<< orphan*/  rx_bytes_low ; 
 int /*<<< orphan*/  s2m ; 
 int /*<<< orphan*/  s2m_stat ; 

__attribute__((used)) static void FUNC2(struct al_udma *udma)
{
	FUNC1("S2M statistics regs:\n");
	FUNC0(udma, " ", "\n", s2m, s2m_stat, drop_pkt);
	FUNC0(udma, " ", "\n", s2m, s2m_stat, rx_bytes_low);
	FUNC0(udma, " ", "\n", s2m, s2m_stat, rx_bytes_high);
	FUNC0(udma, " ", "\n", s2m, s2m_stat, prefed_desc);
	FUNC0(udma, " ", "\n", s2m, s2m_stat, comp_pkt);
	FUNC0(udma, " ", "\n", s2m, s2m_stat, comp_desc);
	FUNC0(udma, " ", "\n", s2m, s2m_stat, ack_pkts);
}