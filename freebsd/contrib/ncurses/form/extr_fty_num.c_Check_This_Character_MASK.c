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
struct TYPE_2__ {struct lconv* L; } ;
typedef  TYPE_1__ thisARG ;
struct lconv {int dummy; } ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static bool
FUNC2(int c, const void *argp)
{
  const thisARG *argn = (const thisARG *)argp;
  struct lconv *L = argn->L;

  return ((FUNC1(c) ||
	   c == '+' ||
	   c == '-' ||
	   FUNC0(c))
	  ? TRUE
	  : FALSE);
}