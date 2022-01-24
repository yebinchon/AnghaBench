#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_3__ {int /*<<< orphan*/  rs_chacha; } ;

/* Variables and functions */
 size_t IVSZ ; 
 size_t KEYSZ ; 
 int FUNC0 (int /*<<< orphan*/ **,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * rs ; 
 TYPE_1__* rsx ; 

__attribute__((used)) static inline void
FUNC4(u_char *buf, size_t n)
{
	if (n < KEYSZ + IVSZ)
		return;

	if (rs == NULL) {
		if (FUNC0(&rs, &rsx) == -1)
			FUNC1();
	}

	FUNC3(&rsx->rs_chacha, buf, KEYSZ * 8);
	FUNC2(&rsx->rs_chacha, buf + KEYSZ, NULL);
}