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
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timeout ; 

__attribute__((used)) static int
FUNC2 (int *start)
{
  int value = FUNC0 (*start);
  int try;

  *start = FUNC1 (timeout);
  while ((try = FUNC0 (*start)) >= 0)
    {
      value <<= 4;
      value += try;
      *start = FUNC1 (timeout);
    }
  return value;
}