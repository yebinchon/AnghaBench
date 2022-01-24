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

/* Variables and functions */
 int FUNC0 (int) ; 

int
FUNC1 (int line_no)
{
  int first_element_no = (-1);

  /*
     ** First see if there is a register on line_no, and if so, set the
     ** first element number
   */
  if ((first_element_no = FUNC0 (line_no)) == -1)
    {				/*
				   ** Looking at the general data, the 1st element on line_no
				 */
    }

  return first_element_no;
}