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
struct pcb {int dummy; } ;
struct TYPE_2__ {struct pcb md_pcb; } ;
struct thread {TYPE_1__ td_md; } ;

/* Variables and functions */

struct pcb *
FUNC0(struct thread *td)
{

	return (&td->td_md.md_pcb);
}