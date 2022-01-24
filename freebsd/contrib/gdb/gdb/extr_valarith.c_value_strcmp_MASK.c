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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (struct value*) ; 
 int /*<<< orphan*/  FUNC2 (struct value*) ; 

__attribute__((used)) static int
FUNC3 (struct value *arg1, struct value *arg2)
{
  int len1 = FUNC0 (FUNC2 (arg1));
  int len2 = FUNC0 (FUNC2 (arg2));
  char *s1 = FUNC1 (arg1);
  char *s2 = FUNC1 (arg2);
  int i, len = len1 < len2 ? len1 : len2;

  for (i = 0; i < len; i++)
    {
      if (s1[i] < s2[i])
        return -1;
      else if (s1[i] > s2[i])
        return 1;
      else
        continue;
    }

  if (len1 < len2)
    return -1;
  else if (len1 > len2)
    return 1;
  else
    return 0;
}