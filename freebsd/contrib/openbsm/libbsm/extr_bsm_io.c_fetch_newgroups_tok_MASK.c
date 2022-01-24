#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_6__ {int no; int /*<<< orphan*/ * list; } ;
struct TYPE_5__ {TYPE_2__ grps; } ;
struct TYPE_7__ {int /*<<< orphan*/  len; TYPE_1__ tt; } ;
typedef  TYPE_3__ tokenstr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(tokenstr_t *tok, u_char *buf, int len)
{
	int i;
	int err = 0;

	FUNC0(buf, len, tok->tt.grps.no, tok->len, err);
	if (err)
		return (-1);

	for (i = 0; i<tok->tt.grps.no; i++) {
		FUNC1(buf, len, tok->tt.grps.list[i], tok->len,
		    err);
		if (err)
			return (-1);
	}

	return (0);
}