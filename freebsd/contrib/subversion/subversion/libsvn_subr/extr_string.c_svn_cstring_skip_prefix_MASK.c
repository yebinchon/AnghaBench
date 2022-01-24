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
typedef  int apr_size_t ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char const*,int) ; 

const char *
FUNC2(const char *str, const char *prefix)
{
  apr_size_t len = FUNC0(prefix);

  if (FUNC1(str, prefix, len) == 0)
    {
      return str + len;
    }
  else
    {
      return NULL;
    }
}