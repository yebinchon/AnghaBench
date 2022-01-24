#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
struct TYPE_14__ {int (* smdb_cursor ) (TYPE_8__*,TYPE_2__**,int /*<<< orphan*/ ) ;} ;
struct TYPE_13__ {int (* smdbc_get ) (TYPE_2__*,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* smdbc_close ) (TYPE_2__*) ;} ;
struct TYPE_12__ {int size; scalar_t__ data; } ;
typedef  TYPE_1__ SMDB_DBENT ;
typedef  TYPE_2__ SMDB_CURSOR ;

/* Variables and functions */
 TYPE_8__* Db ; 
 int SMDBE_LAST_ENTRY ; 
 int SMDBE_OK ; 
 int /*<<< orphan*/  SMDB_CURSOR_GET_NEXT ; 
 int /*<<< orphan*/  SM_TIME_DEFAULT ; 
 int /*<<< orphan*/  VIT ; 
 char* FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  smioerr ; 
 int /*<<< orphan*/  smioout ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (TYPE_8__*,TYPE_2__**,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_2__*,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC11()
{
	int result;
	time_t t;
	SMDB_CURSOR *cursor = NULL;
	SMDB_DBENT db_key, db_value;

	FUNC2(&db_key, '\0', sizeof db_key);
	FUNC2(&db_value, '\0', sizeof db_value);

	result = Db->smdb_cursor(Db, &cursor, 0);
	if (result != SMDBE_OK)
	{
		FUNC4(smioerr, SM_TIME_DEFAULT,
			      "vacation: set cursor: %s\n",
			      FUNC3(result));
		return;
	}

	while ((result = cursor->smdbc_get(cursor, &db_key, &db_value,
					   SMDB_CURSOR_GET_NEXT)) == SMDBE_OK)
	{
		char *timestamp;

		/* skip magic VIT entry */
		if (db_key.size == FUNC5(VIT) + 1 &&
		    FUNC6((char *)db_key.data, VIT,
			    (int)db_key.size - 1) == 0)
			continue;

		/* skip bogus values */
		if (db_value.size != sizeof t)
		{
			FUNC4(smioerr, SM_TIME_DEFAULT,
				      "vacation: %.*s invalid time stamp\n",
				      (int) db_key.size, (char *) db_key.data);
			continue;
		}

		FUNC1(&t, db_value.data, sizeof t);

		if (db_key.size > 40)
			db_key.size = 40;

		if (t <= 0)
		{
			/* must be an exclude */
			timestamp = "(exclusion)\n";
		}
		else
		{
			timestamp = FUNC0(&t);
		}
		FUNC4(smioout, SM_TIME_DEFAULT, "%-40.*s %-10s",
			      (int) db_key.size, (char *) db_key.data,
			      timestamp);

		FUNC2(&db_key, '\0', sizeof db_key);
		FUNC2(&db_value, '\0', sizeof db_value);
	}

	if (result != SMDBE_OK && result != SMDBE_LAST_ENTRY)
	{
		FUNC4(smioerr, SM_TIME_DEFAULT,
			      "vacation: get value at cursor: %s\n",
			      FUNC3(result));
		if (cursor != NULL)
		{
			(void) cursor->smdbc_close(cursor);
			cursor = NULL;
		}
		return;
	}
	(void) cursor->smdbc_close(cursor);
	cursor = NULL;
}