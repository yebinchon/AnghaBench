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
 int CET_MP_WRITE_SESSION_WRITE_REQUEST ; 
 int FUNC0 (struct cached_connection_*,int*,int) ; 
 int FUNC1 (struct cached_connection_*,...) ; 

int
FUNC2(struct cached_connection_ *ws, const char *data,
    size_t data_size)
{
	int request, result;
	int error_code;

	error_code = -1;

	request = CET_MP_WRITE_SESSION_WRITE_REQUEST;
	result = FUNC1(ws, &request, sizeof(int));
	if (result != 0)
		goto fin;

	result = FUNC1(ws, &data_size, sizeof(size_t));
	if (result != 0)
		goto fin;

	result = FUNC1(ws, data, data_size);
	if (result != 0)
		goto fin;

	result = FUNC0(ws, &error_code, sizeof(int));
	if (result != 0)
		error_code = -1;

fin:
	return (error_code);
}