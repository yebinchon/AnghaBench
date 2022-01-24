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
typedef  int /*<<< orphan*/  WAITTYPE ;

/* Variables and functions */
 size_t FAULT_CODE_UNITS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t fault_code ; 
 int /*<<< orphan*/ * fault_table ; 
 int /*<<< orphan*/  inferior_ptid ; 

int
FUNC2 (WAITTYPE *w)
{
  FUNC1 (*w, fault_table[fault_code / FAULT_CODE_UNITS]);
  return FUNC0 (inferior_ptid);
}