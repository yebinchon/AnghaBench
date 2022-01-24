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
struct obstack {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct obstack*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int FUNC3 (char const*) ; 

char *
FUNC4 (struct obstack *obstackp, const char *s1, const char *s2,
	  const char *s3)
{
  int len = FUNC3 (s1) + FUNC3 (s2) + FUNC3 (s3) + 1;
  char *val = (char *) FUNC0 (obstackp, len);
  FUNC2 (val, s1);
  FUNC1 (val, s2);
  FUNC1 (val, s3);
  return val;
}