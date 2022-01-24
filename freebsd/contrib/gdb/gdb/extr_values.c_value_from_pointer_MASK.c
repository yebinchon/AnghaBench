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
struct value {int dummy; } ;
struct type {int dummy; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct value*) ; 
 struct value* FUNC1 (struct type*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct type*,int /*<<< orphan*/ ) ; 

struct value *
FUNC3 (struct type *type, CORE_ADDR addr)
{
  struct value *val = FUNC1 (type);
  FUNC2 (FUNC0 (val), type, addr);
  return val;
}