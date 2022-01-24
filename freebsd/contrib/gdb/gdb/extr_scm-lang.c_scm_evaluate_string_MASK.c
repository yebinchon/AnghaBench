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
typedef  scalar_t__ LONGEST ;

/* Variables and functions */
 struct value* FUNC0 (struct value*,int,struct value**) ; 
 struct value* FUNC1 (char*) ; 
 struct value* FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct value*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*,int) ; 

struct value *
FUNC5 (char *str, int len)
{
  struct value *func;
  struct value *addr = FUNC2 (len + 1);
  LONGEST iaddr = FUNC3 (addr);
  FUNC4 (iaddr, str, len);
  /* FIXME - should find and pass env */
  FUNC4 (iaddr + len, "", 1);
  func = FUNC1 ("scm_evstr");
  return FUNC0 (func, 1, &addr);
}