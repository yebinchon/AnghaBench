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
struct parse {int dummy; } ;
typedef  int /*<<< orphan*/  cset ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char) ; 
 char FUNC1 (struct parse*,char) ; 

__attribute__((used)) static void
FUNC2(struct parse *p, cset *cs)
{
	char c;

	c = FUNC1(p, '=');
	FUNC0(cs, c);
}