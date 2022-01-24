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
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_4__ {int /*<<< orphan*/ * db; } ;
typedef  TYPE_1__ ShellState ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char const* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  tryToCloneData ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static void FUNC7(ShellState *p, const char *zNewDb){
  int rc;
  sqlite3 *newDb = 0;
  if( FUNC0(zNewDb,0)==0 ){
    FUNC6(stderr, "File \"%s\" already exists.\n", zNewDb);
    return;
  }
  rc = FUNC4(zNewDb, &newDb);
  if( rc ){
    FUNC6(stderr, "Cannot create output database: %s\n",
            FUNC2(newDb));
  }else{
    FUNC3(p->db, "PRAGMA writable_schema=ON;", 0, 0, 0);
    FUNC3(newDb, "BEGIN EXCLUSIVE;", 0, 0, 0);
    FUNC5(p, newDb, "type='table'", tryToCloneData);
    FUNC5(p, newDb, "type!='table'", 0);
    FUNC3(newDb, "COMMIT;", 0, 0, 0);
    FUNC3(p->db, "PRAGMA writable_schema=OFF;", 0, 0, 0);
  }
  FUNC1(newDb);
}