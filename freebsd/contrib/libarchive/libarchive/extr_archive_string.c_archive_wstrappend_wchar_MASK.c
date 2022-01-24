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
typedef  int /*<<< orphan*/  wchar_t ;
struct archive_wstring {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct archive_wstring* FUNC1 (struct archive_wstring*,int /*<<< orphan*/ *,int) ; 

struct archive_wstring *
FUNC2(struct archive_wstring *as, wchar_t c)
{
	if ((as = FUNC1(as, &c, 1)) == NULL)
		FUNC0(1, "Out of memory");
	return (as);
}