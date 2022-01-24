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
struct cached_connection_ {int /*<<< orphan*/  write_queue; int /*<<< orphan*/  read_queue; int /*<<< orphan*/  sockfd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cached_connection_*) ; 

void
FUNC3(struct cached_connection_ *connection)
{
	FUNC1(connection != NULL);

	FUNC0(connection->sockfd);
	FUNC0(connection->read_queue);
	FUNC0(connection->write_queue);
	FUNC2(connection);
}