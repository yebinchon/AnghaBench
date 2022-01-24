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
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
struct pollfd {int /*<<< orphan*/  events; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  POLLIN ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  TCIOFLUSH ; 
 int /*<<< orphan*/  FUNC0 (struct timespec*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct pollfd*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

const char *
FUNC4(void)
{
	struct pollfd set[1];
	struct timespec timeout;
	char c;
	const char *type = "9600-baud";

	(void)FUNC3(0, TCIOFLUSH);
	set[0].fd = STDIN_FILENO;
	set[0].events = POLLIN;
	if (FUNC1(set, 1, 5000) <= 0)
		return (type);
	if (FUNC2(STDIN_FILENO, &c, sizeof(char)) != sizeof(char))
		return (type);
	timeout.tv_sec = 0;
	timeout.tv_nsec = 20000;
	(void)FUNC0(&timeout, NULL);
	(void)FUNC3(0, TCIOFLUSH);
	switch (c & 0377) {

	case 0200:		/* 300-baud */
		type = "300-baud";
		break;

	case 0346:		/* 1200-baud */
		type = "1200-baud";
		break;

	case  015:		/* 2400-baud */
	case 0215:
		type = "2400-baud";
		break;

	default:		/* 4800-baud */
		type = "4800-baud";
		break;

	case 0377:		/* 9600-baud */
		type = "9600-baud";
		break;
	}
	return (type);
}