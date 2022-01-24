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
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  token_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char) ; 
#define  AUR_BYTE 131 
 size_t AUR_BYTE_SIZE ; 
#define  AUR_INT32 130 
 size_t AUR_INT32_SIZE ; 
#define  AUR_INT64 129 
 size_t AUR_INT64_SIZE ; 
#define  AUR_SHORT 128 
 size_t AUR_SHORT_SIZE ; 
 char AUT_DATA ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  errno ; 

token_t *
FUNC3(char unit_print, char unit_type, char unit_count, const char *p)
{
	token_t *t;
	u_char *dptr = NULL;
	size_t datasize, totdata;

	/* Determine the size of the basic unit. */
	switch (unit_type) {
	case AUR_BYTE:
	/* case AUR_CHAR: */
		datasize = AUR_BYTE_SIZE;
		break;

	case AUR_SHORT:
		datasize = AUR_SHORT_SIZE;
		break;

	case AUR_INT32:
	/* case AUR_INT: */
		datasize = AUR_INT32_SIZE;
		break;

	case AUR_INT64:
		datasize = AUR_INT64_SIZE;
		break;

	default:
		errno = EINVAL;
		return (NULL);
	}

	totdata = datasize * unit_count;

	FUNC2(t, dptr, 4 * sizeof(u_char) + totdata);
	if (t == NULL)
		return (NULL);

	/*
	 * XXXRW: We should be byte-swapping each data item for multi-byte
	 * types.
	 */
	FUNC1(dptr, AUT_DATA);
	FUNC1(dptr, unit_print);
	FUNC1(dptr, unit_type);
	FUNC1(dptr, unit_count);
	FUNC0(dptr, p, totdata);

	return (t);
}