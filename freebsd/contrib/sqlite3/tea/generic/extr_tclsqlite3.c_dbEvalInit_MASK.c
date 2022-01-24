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
typedef  int /*<<< orphan*/  Tcl_Obj ;
struct TYPE_4__ {int evalFlags; int /*<<< orphan*/ * pArray; int /*<<< orphan*/ * pSql; int /*<<< orphan*/  zSql; int /*<<< orphan*/ * pDb; } ;
typedef  int /*<<< orphan*/  SqliteDb ;
typedef  TYPE_1__ DbEvalContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(
  DbEvalContext *p,               /* Pointer to structure to initialize */
  SqliteDb *pDb,                  /* Database handle */
  Tcl_Obj *pSql,                  /* Object containing SQL script */
  Tcl_Obj *pArray,                /* Name of Tcl array to set (*) element of */
  int evalFlags                   /* Flags controlling evaluation */
){
  FUNC2(p, 0, sizeof(DbEvalContext));
  p->pDb = pDb;
  p->zSql = FUNC0(pSql);
  p->pSql = pSql;
  FUNC1(pSql);
  if( pArray ){
    p->pArray = pArray;
    FUNC1(pArray);
  }
  p->evalFlags = evalFlags;
}