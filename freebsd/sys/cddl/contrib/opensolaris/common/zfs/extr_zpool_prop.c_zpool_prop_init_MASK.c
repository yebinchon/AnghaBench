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
struct TYPE_3__ {char* member_0; int member_1; } ;
typedef  TYPE_1__ zprop_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  PROP_DEFAULT ; 
 int /*<<< orphan*/  PROP_ONETIME ; 
 int /*<<< orphan*/  PROP_READONLY ; 
 int /*<<< orphan*/  PROP_TYPE_NUMBER ; 
 int /*<<< orphan*/  PROP_TYPE_STRING ; 
 int /*<<< orphan*/  SPA_VERSION ; 
 int /*<<< orphan*/  ZFS_TYPE_POOL ; 
#define  ZIO_FAILURE_MODE_CONTINUE 130 
#define  ZIO_FAILURE_MODE_PANIC 129 
#define  ZIO_FAILURE_MODE_WAIT 128 
 int /*<<< orphan*/  ZPOOL_PROP_ALLOCATED ; 
 int /*<<< orphan*/  ZPOOL_PROP_ALTROOT ; 
 int /*<<< orphan*/  ZPOOL_PROP_AUTOEXPAND ; 
 int /*<<< orphan*/  ZPOOL_PROP_AUTOREPLACE ; 
 int /*<<< orphan*/  ZPOOL_PROP_BOOTFS ; 
 int /*<<< orphan*/  ZPOOL_PROP_BOOTSIZE ; 
 int /*<<< orphan*/  ZPOOL_PROP_CACHEFILE ; 
 int /*<<< orphan*/  ZPOOL_PROP_CAPACITY ; 
 int /*<<< orphan*/  ZPOOL_PROP_CHECKPOINT ; 
 int /*<<< orphan*/  ZPOOL_PROP_COMMENT ; 
 int /*<<< orphan*/  ZPOOL_PROP_DEDUPDITTO ; 
 int /*<<< orphan*/  ZPOOL_PROP_DEDUPRATIO ; 
 int /*<<< orphan*/  ZPOOL_PROP_DELEGATION ; 
 int /*<<< orphan*/  ZPOOL_PROP_EXPANDSZ ; 
 int /*<<< orphan*/  ZPOOL_PROP_FAILUREMODE ; 
 int /*<<< orphan*/  ZPOOL_PROP_FRAGMENTATION ; 
 int /*<<< orphan*/  ZPOOL_PROP_FREE ; 
 int /*<<< orphan*/  ZPOOL_PROP_FREEING ; 
 int /*<<< orphan*/  ZPOOL_PROP_GUID ; 
 int /*<<< orphan*/  ZPOOL_PROP_HEALTH ; 
 int /*<<< orphan*/  ZPOOL_PROP_LEAKED ; 
 int /*<<< orphan*/  ZPOOL_PROP_LISTSNAPS ; 
 int /*<<< orphan*/  ZPOOL_PROP_MAXBLOCKSIZE ; 
 int /*<<< orphan*/  ZPOOL_PROP_MAXDNODESIZE ; 
 int /*<<< orphan*/  ZPOOL_PROP_NAME ; 
 int /*<<< orphan*/  ZPOOL_PROP_READONLY ; 
 int /*<<< orphan*/  ZPOOL_PROP_SIZE ; 
 int /*<<< orphan*/  ZPOOL_PROP_TNAME ; 
 int /*<<< orphan*/  ZPOOL_PROP_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 

void
FUNC4(void)
{
	static zprop_index_t boolean_table[] = {
		{ "off",	0},
		{ "on",		1},
		{ NULL }
	};

	static zprop_index_t failuremode_table[] = {
		{ "wait",	ZIO_FAILURE_MODE_WAIT },
		{ "continue",	ZIO_FAILURE_MODE_CONTINUE },
		{ "panic",	ZIO_FAILURE_MODE_PANIC },
		{ NULL }
	};

	/* string properties */
	FUNC3(ZPOOL_PROP_ALTROOT, "altroot", NULL, PROP_DEFAULT,
	    ZFS_TYPE_POOL, "<path>", "ALTROOT");
	FUNC3(ZPOOL_PROP_BOOTFS, "bootfs", NULL, PROP_DEFAULT,
	    ZFS_TYPE_POOL, "<filesystem>", "BOOTFS");
	FUNC3(ZPOOL_PROP_CACHEFILE, "cachefile", NULL,
	    PROP_DEFAULT, ZFS_TYPE_POOL, "<file> | none", "CACHEFILE");
	FUNC3(ZPOOL_PROP_COMMENT, "comment", NULL,
	    PROP_DEFAULT, ZFS_TYPE_POOL, "<comment-string>", "COMMENT");

	/* readonly number properties */
	FUNC2(ZPOOL_PROP_SIZE, "size", 0, PROP_READONLY,
	    ZFS_TYPE_POOL, "<size>", "SIZE");
	FUNC2(ZPOOL_PROP_FREE, "free", 0, PROP_READONLY,
	    ZFS_TYPE_POOL, "<size>", "FREE");
	FUNC2(ZPOOL_PROP_FREEING, "freeing", 0, PROP_READONLY,
	    ZFS_TYPE_POOL, "<size>", "FREEING");
	FUNC2(ZPOOL_PROP_CHECKPOINT, "checkpoint", 0,
	    PROP_READONLY, ZFS_TYPE_POOL, "<size>", "CKPOINT");
	FUNC2(ZPOOL_PROP_LEAKED, "leaked", 0, PROP_READONLY,
	    ZFS_TYPE_POOL, "<size>", "LEAKED");
	FUNC2(ZPOOL_PROP_ALLOCATED, "allocated", 0,
	    PROP_READONLY, ZFS_TYPE_POOL, "<size>", "ALLOC");
	FUNC2(ZPOOL_PROP_EXPANDSZ, "expandsize", 0,
	    PROP_READONLY, ZFS_TYPE_POOL, "<size>", "EXPANDSZ");
	FUNC2(ZPOOL_PROP_FRAGMENTATION, "fragmentation", 0,
	    PROP_READONLY, ZFS_TYPE_POOL, "<percent>", "FRAG");
	FUNC2(ZPOOL_PROP_CAPACITY, "capacity", 0, PROP_READONLY,
	    ZFS_TYPE_POOL, "<size>", "CAP");
	FUNC2(ZPOOL_PROP_GUID, "guid", 0, PROP_READONLY,
	    ZFS_TYPE_POOL, "<guid>", "GUID");
	FUNC2(ZPOOL_PROP_HEALTH, "health", 0, PROP_READONLY,
	    ZFS_TYPE_POOL, "<state>", "HEALTH");
	FUNC2(ZPOOL_PROP_DEDUPRATIO, "dedupratio", 0,
	    PROP_READONLY, ZFS_TYPE_POOL, "<1.00x or higher if deduped>",
	    "DEDUP");

	/* system partition size */
	FUNC2(ZPOOL_PROP_BOOTSIZE, "bootsize", 0, PROP_ONETIME,
	    ZFS_TYPE_POOL, "<size>", "BOOTSIZE");

	/* default number properties */
	FUNC2(ZPOOL_PROP_VERSION, "version", SPA_VERSION,
	    PROP_DEFAULT, ZFS_TYPE_POOL, "<version>", "VERSION");
	FUNC2(ZPOOL_PROP_DEDUPDITTO, "dedupditto", 0,
	    PROP_DEFAULT, ZFS_TYPE_POOL, "<threshold (min 100)>", "DEDUPDITTO");

	/* default index (boolean) properties */
	FUNC1(ZPOOL_PROP_DELEGATION, "delegation", 1,
	    PROP_DEFAULT, ZFS_TYPE_POOL, "on | off", "DELEGATION",
	    boolean_table);
	FUNC1(ZPOOL_PROP_AUTOREPLACE, "autoreplace", 0,
	    PROP_DEFAULT, ZFS_TYPE_POOL, "on | off", "REPLACE", boolean_table);
	FUNC1(ZPOOL_PROP_LISTSNAPS, "listsnapshots", 0,
	    PROP_DEFAULT, ZFS_TYPE_POOL, "on | off", "LISTSNAPS",
	    boolean_table);
	FUNC1(ZPOOL_PROP_AUTOEXPAND, "autoexpand", 0,
	    PROP_DEFAULT, ZFS_TYPE_POOL, "on | off", "EXPAND", boolean_table);
	FUNC1(ZPOOL_PROP_READONLY, "readonly", 0,
	    PROP_DEFAULT, ZFS_TYPE_POOL, "on | off", "RDONLY", boolean_table);

	/* default index properties */
	FUNC1(ZPOOL_PROP_FAILUREMODE, "failmode",
	    ZIO_FAILURE_MODE_WAIT, PROP_DEFAULT, ZFS_TYPE_POOL,
	    "wait | continue | panic", "FAILMODE", failuremode_table);

	/* hidden properties */
	FUNC0(ZPOOL_PROP_NAME, "name", PROP_TYPE_STRING,
	    PROP_READONLY, ZFS_TYPE_POOL, "NAME");
	FUNC0(ZPOOL_PROP_MAXBLOCKSIZE, "maxblocksize",
	    PROP_TYPE_NUMBER, PROP_READONLY, ZFS_TYPE_POOL, "MAXBLOCKSIZE");
	FUNC0(ZPOOL_PROP_TNAME, "tname", PROP_TYPE_STRING,
	    PROP_ONETIME, ZFS_TYPE_POOL, "TNAME");
	FUNC0(ZPOOL_PROP_MAXDNODESIZE, "maxdnodesize",
	    PROP_TYPE_NUMBER, PROP_READONLY, ZFS_TYPE_POOL, "MAXDNODESIZE");
}