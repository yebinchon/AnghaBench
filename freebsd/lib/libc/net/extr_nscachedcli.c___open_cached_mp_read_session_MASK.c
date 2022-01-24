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
struct cached_connection_params {int dummy; } ;
struct cached_connection_ {int mp_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  CET_MP_READ_SESSION_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (struct cached_connection_*) ; 
 struct cached_connection_* FUNC1 (struct cached_connection_params const*) ; 
 int FUNC2 (struct cached_connection_*,int*,int) ; 
 int FUNC3 (struct cached_connection_*,...) ; 
 int FUNC4 (struct cached_connection_*,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (char const*) ; 

struct cached_connection_ *
FUNC6(struct cached_connection_params const *params,
	const char *entry_name)
{
	struct cached_connection_ *connection, *retval;
	size_t name_size;
	int error_code;
	int result;

	retval = NULL;
	connection = FUNC1(params);
	if (connection == NULL)
		return (NULL);
	connection->mp_flag = 1;

	result = FUNC4(connection, CET_MP_READ_SESSION_REQUEST);
	if (result != 0)
		goto fin;

	name_size = FUNC5(entry_name);
	result = FUNC3(connection, &name_size, sizeof(size_t));
	if (result != 0)
		goto fin;

	result = FUNC3(connection, entry_name, name_size);
	if (result != 0)
		goto fin;

	result = FUNC2(connection, &error_code, sizeof(int));
	if (result != 0)
		goto fin;

	if (error_code != 0)
		result = error_code;

fin:
	if (result != 0)
		FUNC0(connection);
	else
		retval = connection;
	return (retval);
}