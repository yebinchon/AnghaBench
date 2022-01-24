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
typedef  int /*<<< orphan*/  sqlite3_vfs ;
struct TYPE_3__ {int /*<<< orphan*/  (* xDlClose ) (TYPE_1__*,void*) ;} ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,void*) ; 

__attribute__((used)) static void FUNC2(sqlite3_vfs *pVfs, void *pHandle){
  FUNC0(pVfs)->xDlClose(FUNC0(pVfs), pHandle);
}