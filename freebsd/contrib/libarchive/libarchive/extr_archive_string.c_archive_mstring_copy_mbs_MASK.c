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
struct archive_mstring {scalar_t__ aes_set; } ;

/* Variables and functions */
 int FUNC0 (struct archive_mstring*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

int
FUNC2(struct archive_mstring *aes, const char *mbs)
{
	if (mbs == NULL) {
		aes->aes_set = 0;
		return (0);
	}
	return (FUNC0(aes, mbs, FUNC1(mbs)));
}