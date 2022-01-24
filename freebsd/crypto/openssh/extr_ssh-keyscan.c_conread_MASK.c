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
struct TYPE_3__ {int c_status; scalar_t__ c_data; scalar_t__ c_off; scalar_t__ c_len; int c_plen; int /*<<< orphan*/  c_name; } ;
typedef  TYPE_1__ con ;

/* Variables and functions */
 int CS_CON ; 
 int CS_KEYS ; 
#define  CS_SIZE 128 
 size_t FUNC0 (int /*<<< orphan*/ ,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 TYPE_1__* fdcon ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  read ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 

__attribute__((used)) static void
FUNC9(int s)
{
	con *c = &fdcon[s];
	size_t n;

	if (c->c_status == CS_CON) {
		FUNC2(s);
		return;
	}
	n = FUNC0(read, s, c->c_data + c->c_off, c->c_len - c->c_off);
	if (n == 0) {
		FUNC4("read (%s): %s", c->c_name, FUNC7(errno));
		FUNC1(s);
		return;
	}
	c->c_off += n;

	if (c->c_off == c->c_len)
		switch (c->c_status) {
		case CS_SIZE:
			c->c_plen = FUNC6(c->c_plen);
			c->c_len = c->c_plen + 8 - (c->c_plen & 7);
			c->c_off = 0;
			c->c_data = FUNC8(c->c_len);
			c->c_status = CS_KEYS;
			break;
		default:
			FUNC5("conread: invalid status %d", c->c_status);
			break;
		}

	FUNC3(s);
}