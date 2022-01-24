#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zTm ;
typedef  int /*<<< orphan*/  sqlite_uint64 ;
typedef  int /*<<< orphan*/  Tcl_DString ;
struct TYPE_2__ {int /*<<< orphan*/  interp; int /*<<< orphan*/  zProfile; } ;
typedef  TYPE_1__ SqliteDb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(void *cd, const char *zSql, sqlite_uint64 tm){
  SqliteDb *pDb = (SqliteDb*)cd;
  Tcl_DString str;
  char zTm[100];

  FUNC7(sizeof(zTm)-1, zTm, "%lld", tm);
  FUNC3(&str);
  FUNC0(&str, pDb->zProfile, -1);
  FUNC1(&str, zSql);
  FUNC1(&str, zTm);
  FUNC5(pDb->interp, FUNC4(&str));
  FUNC2(&str);
  FUNC6(pDb->interp);
}