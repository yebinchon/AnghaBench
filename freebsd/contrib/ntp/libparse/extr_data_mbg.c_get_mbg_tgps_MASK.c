#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void* tick; void* sec; int /*<<< orphan*/  wn; } ;
typedef  TYPE_1__ T_GPS ;

/* Variables and functions */
 void* FUNC0 (unsigned char**) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char**) ; 

void
FUNC2(
	unsigned char **bufpp,
	T_GPS *tgpsp
	)
{
  tgpsp->wn = FUNC1(bufpp);
  tgpsp->sec = FUNC0(bufpp);
  tgpsp->tick = FUNC0(bufpp);
}