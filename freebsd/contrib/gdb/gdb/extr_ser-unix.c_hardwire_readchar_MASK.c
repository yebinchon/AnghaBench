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
struct serial {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  do_hardwire_readchar ; 
 int FUNC0 (struct serial*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1 (struct serial *scb, int timeout)
{
  return FUNC0 (scb, timeout, do_hardwire_readchar);
}