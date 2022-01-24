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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void
FUNC2(uint32_t *tmp, size_t tmp_len)
{
    size_t i;

    for (i = 0; i < tmp_len; ++i) {
	int cc = FUNC0(tmp[i]);
	if (cc) {
	    size_t j;
	    for (j = i + 1;
		 j < tmp_len && FUNC0(tmp[j]);
		 ++j)
		;
	    FUNC1(&tmp[i], j - i);
	    i = j;
	}
    }
}