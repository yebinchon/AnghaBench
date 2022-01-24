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
struct ui_out {int dummy; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int TARGET_ADDR_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ui_out*,char const*,char*) ; 

void
FUNC3 (struct ui_out *uiout,
			const char *fldname,
			CORE_ADDR address)
{
  char addstr[20];

  /* FIXME: cagney/2002-05-03: Need local_address_string() function
     that returns the language localized string formatted to a width
     based on TARGET_ADDR_BIT.  */
  /* print_address_numeric (address, 1, local_stream); */
  if (TARGET_ADDR_BIT <= 32)
    FUNC1 (addstr, FUNC0 (address, "08l"));
  else
    FUNC1 (addstr, FUNC0 (address, "016l"));

  FUNC2 (uiout, fldname, addstr);
}