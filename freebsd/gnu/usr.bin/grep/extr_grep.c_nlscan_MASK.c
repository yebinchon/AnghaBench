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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  eolbyte ; 
 char const* lastnl ; 
 char* FUNC1 (char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  totalnl ; 

__attribute__((used)) static void
FUNC2 (char const *lim)
{
  size_t newlines = 0;
  char const *beg;
  for (beg = lastnl; beg != lim; beg = FUNC1 (beg, eolbyte, lim - beg), beg++)
    newlines++;
  totalnl = FUNC0 (totalnl, newlines);
  lastnl = lim;
}