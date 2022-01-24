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
typedef  scalar_t__ uintmax_t ;
struct archive_string {int dummy; } ;
typedef  scalar_t__ intmax_t ;
typedef  scalar_t__ INTMAX_MAX ;

/* Variables and functions */
 scalar_t__ INTMAX_MIN ; 
 int /*<<< orphan*/  FUNC0 (struct archive_string*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_string*,char) ; 

__attribute__((used)) static void
FUNC2(struct archive_string *as, intmax_t d, unsigned base)
{
	uintmax_t ud;

	if (d < 0) {
		FUNC1(as, '-');
		ud = (d == INTMAX_MIN) ? (uintmax_t)(INTMAX_MAX) + 1 : (uintmax_t)(-d);
	} else
		ud = d;
	FUNC0(as, ud, base);
}