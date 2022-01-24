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
struct _parse_state {int ps_state; } ;
struct _memstream {int dummy; } ;

/* Variables and functions */
 int EOF ; 
#define  S_BEGIN 129 
#define  S_OFFSET 128 
 int T_ERR ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct _memstream*) ; 
 int FUNC2 (struct _memstream*) ; 
 int FUNC3 (struct _memstream*,struct _parse_state*) ; 

__attribute__((used)) static int
FUNC4(struct _memstream *ms, struct _parse_state *ps)
{
	int c;

loop:
	c = FUNC2(ms);
	if (c == 0x00)
		return (EOF);
	if (FUNC0(c)) {
		FUNC1(ms);
		goto loop;
	}

	switch (ps->ps_state) {
	case S_BEGIN:
		switch (c) {
		case ':':
		case '-':
		case '/':
			FUNC1(ms);
			return (c);
		case '0':
		case '1':
		case '2':
		case '3':
		case '4':
		case '5':
		case '6':
		case '7':
		case '8':
		case '9':
			return (FUNC3(ms, ps));
		}
		break;
	case S_OFFSET:
		switch (c) {
		case '/':
			FUNC1(ms);
			return (c);
		case '+':
		case '-':
		case '0':
		case '1':
		case '2':
		case '3':
		case '4':
		case '5':
		case '6':
		case '7':
		case '8':
		case '9':
			return (FUNC3(ms, ps));
		}
		break;
	}
	return (T_ERR);
}