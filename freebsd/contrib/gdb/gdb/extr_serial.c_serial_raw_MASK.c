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
struct serial {TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* go_raw ) (struct serial*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct serial*) ; 

void
FUNC1 (struct serial *scb)
{
  scb->ops->go_raw (scb);
}