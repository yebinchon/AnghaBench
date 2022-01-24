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
typedef  int /*<<< orphan*/  DBTYPE ;

/* Variables and functions */
 int /*<<< orphan*/  DB_BTREE ; 
 int /*<<< orphan*/  DB_HASH ; 
 int /*<<< orphan*/  DB_RECNO ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 

__attribute__((used)) static DBTYPE
FUNC2(const char *s)
{
	if (!FUNC1(s, "btree"))
		return DB_BTREE;
	if (!FUNC1(s, "hash"))
		return DB_HASH;
	if (!FUNC1(s, "recno"))
		return DB_RECNO;
	FUNC0(1, "%s: unknown type (use btree, hash or recno)", s);
	/* NOTREACHED */
}