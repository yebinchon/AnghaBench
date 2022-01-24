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
typedef  int /*<<< orphan*/  LPCWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int,void*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2 (LPCWSTR huh, int s, void *str, size_t n)
{
  for (;;)
    {
      if (FUNC1 (s, str, n, 0) == (int) n)
	return n;
      FUNC0 (huh, s);
    }
}