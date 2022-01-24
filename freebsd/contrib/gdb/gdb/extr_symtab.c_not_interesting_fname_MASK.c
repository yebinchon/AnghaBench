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
 scalar_t__ FUNC0 (char const*,char const*) ; 

__attribute__((used)) static int
FUNC1 (const char *fname)
{
  static const char *illegal_aliens[] = {
    "_globals_",	/* inserted by coff_symtab_read */
    NULL
  };
  int i;

  for (i = 0; illegal_aliens[i]; i++)
    {
      if (FUNC0 (fname, illegal_aliens[i]) == 0)
	return 1;
    }
  return 0;
}