#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_4__ {int rs_have; } ;
struct TYPE_3__ {int /*<<< orphan*/ * rs_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* rs ; 
 TYPE_1__* rsx ; 

__attribute__((used)) static inline void
FUNC4(uint32_t *val)
{
	u_char *keystream;
	FUNC1(sizeof(*val));
	if (rs->rs_have < sizeof(*val))
		FUNC0(NULL, 0);
	keystream = rsx->rs_buf + sizeof(rsx->rs_buf) - rs->rs_have;
	FUNC2(val, keystream, sizeof(*val));
	FUNC3(keystream, 0, sizeof(*val));
	rs->rs_have -= sizeof(*val);
}