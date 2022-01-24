#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ (* close ) (TYPE_1__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DB_HASH ; 
 int /*<<< orphan*/  O_RDWR ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 TYPE_1__* session_db ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC4(void)
{
	if (session_db && (*session_db->close)(session_db))
		FUNC1("session database close: %s", FUNC2(errno));
	if ((session_db = FUNC0(NULL, O_RDWR, 0, DB_HASH, NULL)) == NULL) {
		FUNC1("session database open: %s", FUNC2(errno));
		return (1);
	}
	return (0);

}