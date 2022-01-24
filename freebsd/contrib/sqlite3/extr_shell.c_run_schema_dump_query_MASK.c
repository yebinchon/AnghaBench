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
struct TYPE_4__ {int /*<<< orphan*/  out; int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ ShellState ;

/* Variables and functions */
 int SQLITE_CORRUPT ; 
 int /*<<< orphan*/  dump_callback ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,TYPE_1__*,char**) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char*,char const*) ; 
 int FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int FUNC8(
  ShellState *p,
  const char *zQuery
){
  int rc;
  char *zErr = 0;
  rc = FUNC3(p->db, zQuery, dump_callback, p, &zErr);
  if( rc==SQLITE_CORRUPT ){
    char *zQ2;
    int len = FUNC6(zQuery);
    FUNC2(p->out, "/****** CORRUPTION ERROR *******/\n");
    if( zErr ){
      FUNC7(p->out, "/****** %s ******/\n", zErr);
      FUNC4(zErr);
      zErr = 0;
    }
    zQ2 = FUNC1( len+100 );
    if( zQ2==0 ) return rc;
    FUNC5(len+100, zQ2, "%s ORDER BY rowid DESC", zQuery);
    rc = FUNC3(p->db, zQ2, dump_callback, p, &zErr);
    if( rc ){
      FUNC7(p->out, "/****** ERROR: %s ******/\n", zErr);
    }else{
      rc = SQLITE_CORRUPT;
    }
    FUNC4(zErr);
    FUNC0(zQ2);
  }
  return rc;
}