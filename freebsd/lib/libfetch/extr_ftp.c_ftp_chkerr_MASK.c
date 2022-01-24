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
struct TYPE_4__ {char* buf; int buflen; int err; } ;
typedef  TYPE_1__ conn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FTP_PROTOCOL_ERROR ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (unsigned char) ; 

__attribute__((used)) static int
FUNC6(conn_t *conn)
{
	if (FUNC0(conn) == -1) {
		FUNC1();
		return (-1);
	}
	if (FUNC3(conn->buf)) {
		while (conn->buflen && !FUNC4(conn->buf)) {
			if (FUNC0(conn) == -1) {
				FUNC1();
				return (-1);
			}
		}
	}

	while (conn->buflen &&
	    FUNC5((unsigned char)conn->buf[conn->buflen - 1]))
		conn->buflen--;
	conn->buf[conn->buflen] = '\0';

	if (!FUNC4(conn->buf)) {
		FUNC2(FTP_PROTOCOL_ERROR);
		return (-1);
	}

	conn->err = (conn->buf[0] - '0') * 100
	    + (conn->buf[1] - '0') * 10
	    + (conn->buf[2] - '0');

	return (conn->err);
}