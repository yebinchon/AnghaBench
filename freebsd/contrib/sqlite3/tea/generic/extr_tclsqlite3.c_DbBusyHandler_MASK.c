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
typedef  int /*<<< orphan*/  zVal ;
struct TYPE_2__ {int /*<<< orphan*/  interp; int /*<<< orphan*/  zBusy; } ;
typedef  TYPE_1__ SqliteDb ;

/* Variables and functions */
 int TCL_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char*,int) ; 

__attribute__((used)) static int FUNC4(void *cd, int nTries){
  SqliteDb *pDb = (SqliteDb*)cd;
  int rc;
  char zVal[30];

  FUNC3(sizeof(zVal), zVal, "%d", nTries);
  rc = FUNC1(pDb->interp, pDb->zBusy, " ", zVal, (char*)0);
  if( rc!=TCL_OK || FUNC2(FUNC0(pDb->interp)) ){
    return 0;
  }
  return 1;
}