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
struct TYPE_3__ {int /*<<< orphan*/ * mode; int /*<<< orphan*/ * com; } ;
typedef  TYPE_1__ PORT_PARM ;

/* Variables and functions */
 int DEFAULT_N_COM ; 
 int /*<<< orphan*/  FUNC0 (unsigned char**,int /*<<< orphan*/ *) ; 

void
FUNC1(
	unsigned char **buffpp,
	PORT_PARM *portparamp
	)
{
  int i;

  for (i = 0; i < DEFAULT_N_COM; i++)
    {
      FUNC0(buffpp, &portparamp->com[i]);
    }
  for (i = 0; i < DEFAULT_N_COM; i++)
    {
      portparamp->mode[i] = *(*buffpp)++;
    }
}