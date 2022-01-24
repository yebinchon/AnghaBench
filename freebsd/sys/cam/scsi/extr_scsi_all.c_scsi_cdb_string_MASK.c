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
typedef  int /*<<< orphan*/  u_int8_t ;
struct sbuf {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  SBUF_FIXEDLEN ; 
 char* FUNC0 (struct sbuf*) ; 
 int FUNC1 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct sbuf*,char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sbuf*) ; 

char *
FUNC4(u_int8_t *cdb_ptr, char *cdb_string, size_t len)
{
	struct sbuf sb;
	int error;

	if (len == 0)
		return ("");

	FUNC2(&sb, cdb_string, len, SBUF_FIXEDLEN);

	FUNC3(cdb_ptr, &sb);

	/* ENOMEM just means that the fixed buffer is full, OK to ignore */
	error = FUNC1(&sb);
	if (error != 0 && error != ENOMEM)
		return ("");

	return(FUNC0(&sb));
}