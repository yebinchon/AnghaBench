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
 int /*<<< orphan*/  CET_READ_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct cached_connection_*,...) ; 
 int FUNC2 (struct cached_connection_*,...) ; 
 int FUNC3 (struct cached_connection_*,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (char const*) ; 

int
FUNC5(struct cached_connection_ *connection, const char *entry_name,
    const char *key, size_t key_size, char *data, size_t *data_size)
{
	size_t name_size, result_size;
	int error_code, rec_error_code;
	int result;

	FUNC0(connection != NULL);
	result = 0;
	error_code = -1;

	result = FUNC3(connection, CET_READ_REQUEST);
	if (result != 0)
		goto fin;

	name_size = FUNC4(entry_name);
	result = FUNC2(connection, &name_size, sizeof(size_t));
	if (result != 0)
		goto fin;

	result = FUNC2(connection, &key_size, sizeof(size_t));
	if (result != 0)
		goto fin;

	result = FUNC2(connection, entry_name, name_size);
	if (result != 0)
		goto fin;

	result = FUNC2(connection, key, key_size);
	if (result != 0)
		goto fin;

	result = FUNC1(connection, &rec_error_code, sizeof(int));
	if (result != 0)
		goto fin;

	if (rec_error_code != 0) {
		error_code = rec_error_code;
		goto fin;
	}

	result = FUNC1(connection, &result_size, sizeof(size_t));
	if (result != 0)
		goto fin;

	 if (result_size > *data_size) {
		 *data_size = result_size;
		 error_code = -2;
		 goto fin;
	 }

	result = FUNC1(connection, data, result_size);
	if (result != 0)
		goto fin;

	*data_size = result_size;
	error_code = 0;

fin:
	return (error_code);
}