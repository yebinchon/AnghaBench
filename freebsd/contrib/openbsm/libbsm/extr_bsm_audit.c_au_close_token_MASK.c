#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_4__ {size_t len; int /*<<< orphan*/  t_data; } ;
typedef  TYPE_1__ token_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 

int
FUNC2(token_t *tok, u_char *buffer, size_t *buflen)
{

	if (tok->len > *buflen) {
		FUNC0(tok);
		errno = ENOMEM;
		return (EINVAL);
	}

	FUNC1(buffer, tok->t_data, tok->len);
	*buflen = tok->len;
	FUNC0(tok);
	return (0);
}