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
typedef  int /*<<< orphan*/ * XYZ ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE_DOUBLE ; 
 scalar_t__ IEEE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int XP ; 
 int ZP ; 
 scalar_t__ FUNC1 (unsigned char**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mbg_double ; 

void
FUNC2(
	unsigned char **buffpp,
	XYZ xyz
	)
{
  int i;

  for (i = XP; i <= ZP; i++)
    {
      if  (FUNC1(buffpp, IEEE_DOUBLE, &xyz[i], mbg_double) != IEEE_OK)
	{
	  FUNC0(&xyz[i]);
	}
    }
}