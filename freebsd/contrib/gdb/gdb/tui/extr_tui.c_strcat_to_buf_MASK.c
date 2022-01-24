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
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 

void
FUNC3 (char *buf, int buflen, const char *item_to_add)
{
  if (item_to_add != (char *) NULL && buf != (char *) NULL)
    {
      if ((FUNC1 (buf) + FUNC1 (item_to_add)) <= buflen)
	FUNC0 (buf, item_to_add);
      else
	FUNC2 (buf, item_to_add, (buflen - FUNC1 (buf)));
    }
}