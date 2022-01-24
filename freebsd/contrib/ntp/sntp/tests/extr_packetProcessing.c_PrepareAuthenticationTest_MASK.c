#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct key {int dummy; } ;
struct TYPE_3__ {int key_id; int key_len; int /*<<< orphan*/  key_seq; int /*<<< orphan*/  typen; int /*<<< orphan*/ * next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* FUNC2 (int) ; 
 int key_cnt ; 
 TYPE_1__* key_ptr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void const*,int) ; 
 int restoreKeyDb ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int) ; 
 scalar_t__ FUNC5 (char const*) ; 

void
FUNC6(
	int		key_id,
	int		key_len,
	const char *	type,
	const void *	key_seq
	)
{
	char str[25];
	FUNC4(str, 25, "%d", key_id);
	FUNC0("-a", str);

	key_cnt = 1;
	key_ptr = FUNC2(sizeof(struct key));
	key_ptr->next = NULL;
	key_ptr->key_id = key_id;
	key_ptr->key_len = key_len;
	FUNC3(key_ptr->typen, type, FUNC5(type) + 1);

	FUNC1(key_len < sizeof(key_ptr->key_seq));

	FUNC3(key_ptr->key_seq, key_seq, key_ptr->key_len);
	restoreKeyDb = true;
}