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
struct TYPE_3__ {int /*<<< orphan*/  delta_t; int /*<<< orphan*/  tm_reconn; int /*<<< orphan*/  tm_disconn; int /*<<< orphan*/  status; } ;
typedef  TYPE_1__ ANT_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char**) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char**) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char**,int /*<<< orphan*/ *) ; 

void
FUNC3(
	unsigned char **buffpp,
	ANT_INFO *antinfop
	)
{
  antinfop->status = FUNC0(buffpp);
  FUNC2(buffpp, &antinfop->tm_disconn);
  FUNC2(buffpp, &antinfop->tm_reconn);
  antinfop->delta_t = FUNC1(buffpp);
}