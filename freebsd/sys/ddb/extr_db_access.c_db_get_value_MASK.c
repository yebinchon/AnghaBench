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
typedef  int /*<<< orphan*/  u_int64_t ;
typedef  int db_expr_t ;
typedef  scalar_t__ db_addr_t ;

/* Variables and functions */
 int* db_extend ; 
 int /*<<< orphan*/  FUNC0 (char*,long long) ; 
 scalar_t__ FUNC1 (scalar_t__,int,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

db_expr_t
FUNC3(db_addr_t addr, int size, bool is_signed)
{
	char		data[sizeof(u_int64_t)];
	db_expr_t	value;
	int		i;

	if (FUNC1(addr, size, data) != 0) {
		FUNC0("*** error reading from address %llx ***\n",
		    (long long)addr);
		FUNC2();
	}

	value = 0;
#if _BYTE_ORDER == _BIG_ENDIAN
	for (i = 0; i < size; i++)
#else	/* _LITTLE_ENDIAN */
	for (i = size - 1; i >= 0; i--)
#endif
	{
	    value = (value << 8) + (data[i] & 0xFF);
	}

	if (size < 4) {
	    if (is_signed && (value & db_extend[size]) != 0)
		value |= db_extend[size];
	}
	return (value);
}