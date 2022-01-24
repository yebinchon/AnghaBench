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
struct httpio {int chunked; int /*<<< orphan*/ * conn; } ;
typedef  int /*<<< orphan*/  conn_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 struct httpio* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct httpio*) ; 
 int /*<<< orphan*/ * FUNC3 (struct httpio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  http_closefn ; 
 int /*<<< orphan*/  http_readfn ; 
 int /*<<< orphan*/  http_writefn ; 

__attribute__((used)) static FILE *
FUNC4(conn_t *conn, int chunked)
{
	struct httpio *io;
	FILE *f;

	if ((io = FUNC0(1, sizeof(*io))) == NULL) {
		FUNC1();
		return (NULL);
	}
	io->conn = conn;
	io->chunked = chunked;
	f = FUNC3(io, http_readfn, http_writefn, NULL, http_closefn);
	if (f == NULL) {
		FUNC1();
		FUNC2(io);
		return (NULL);
	}
	return (f);
}