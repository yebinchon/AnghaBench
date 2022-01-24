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
struct _memstream {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct _memstream*,int*,int) ; 
 int FUNC1 (struct _memstream*) ; 
 int /*<<< orphan*/  FUNC2 (struct _memstream*,int) ; 

__attribute__((used)) static int
FUNC3(struct _memstream * __restrict ms,
    int * __restrict result)
{
	int base, ch;

	ch = FUNC1(ms);
	if (ch != '\\')
		*result = ch;
	else {
		ch = FUNC1(ms);
		base = 16;
		switch (ch) {
		case 'a':
			*result = '\a';
			break;
		case 'b':
			*result = '\b';
			break;
		case 'f':
			*result = '\f';
			break;
		case 'n':
			*result = '\n';
			break;
		case 'r':
			*result = '\r';
			break;
		case 't':
			*result = '\t';
			break;
		case 'v':
			*result = '\v';
			break;
		case '0': case '1': case '2': case '3':
		case '4': case '5': case '6': case '7':
			FUNC2(ms, ch);
			base -= 8;
			/*FALLTHROUGH*/
		case 'x':
			return (FUNC0(ms, result, base));
			/*NOTREACHED*/
		default:
			/* unknown escape */
			*result = ch;
		}
	}
	return (0);
}