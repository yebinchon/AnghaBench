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
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int /*<<< orphan*/  u_int16_t ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  token_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  AUT_TRAILER ; 
 int /*<<< orphan*/  AUT_TRAILER_MAGIC ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

token_t *
FUNC4(int rec_size)
{
	token_t *t;
	u_char *dptr = NULL;
	u_int16_t magic = AUT_TRAILER_MAGIC;

	FUNC3(t, dptr, sizeof(u_char) + sizeof(u_int16_t) +
	    sizeof(u_int32_t));
	if (t == NULL)
		return (NULL);

	FUNC0(dptr, AUT_TRAILER);
	FUNC1(dptr, magic);
	FUNC2(dptr, rec_size);

	return (t);
}