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
struct TYPE_2__ {int /*<<< orphan*/  lockingContext; } ;
typedef  TYPE_1__ unixFile ;
typedef  int /*<<< orphan*/  sqlite3_file ;

/* Variables and functions */
 int /*<<< orphan*/  NO_LOCK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(sqlite3_file *id) {
  unixFile *pFile = (unixFile*)id;
  FUNC0( id!=0 );
  FUNC2(id, NO_LOCK);
  FUNC3(pFile->lockingContext);
  return FUNC1(id);
}