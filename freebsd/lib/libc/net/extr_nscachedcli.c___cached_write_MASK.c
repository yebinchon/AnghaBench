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
struct cached_connection_ {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CET_WRITE_REQUEST ; 
 int FUNC0 (struct cached_connection_*,int*,int) ; 
 int FUNC1 (struct cached_connection_*,...) ; 
 int FUNC2 (struct cached_connection_*,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (char const*) ; 

int
FUNC4(struct cached_connection_ *connection, const char *entry_name,
    const char *key, size_t key_size, const char *data, size_t data_size)
{
	size_t name_size;
	int error_code;
	int result;

	error_code = -1;
	result = 0;
	result = FUNC2(connection, CET_WRITE_REQUEST);
	if (result != 0)
		goto fin;

	name_size = FUNC3(entry_name);
	result = FUNC1(connection, &name_size, sizeof(size_t));
	if (result != 0)
		goto fin;

	result = FUNC1(connection, &key_size, sizeof(size_t));
	if (result != 0)
		goto fin;

	result = FUNC1(connection, &data_size, sizeof(size_t));
	if (result != 0)
		goto fin;

	result = FUNC1(connection, entry_name, name_size);
	if (result != 0)
		goto fin;

	result = FUNC1(connection, key, key_size);
	if (result != 0)
		goto fin;

	result = FUNC1(connection, data, data_size);
	if (result != 0)
		goto fin;

	result = FUNC0(connection, &error_code, sizeof(int));
	if (result != 0)
		error_code = -1;

fin:
	return (error_code);
}