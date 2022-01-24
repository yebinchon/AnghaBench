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
typedef  int /*<<< orphan*/  Vdbe ;

/* Variables and functions */
 scalar_t__ IsStat4 ; 
 int /*<<< orphan*/  OP_Function0 ; 
 int /*<<< orphan*/  OP_Integer ; 
 int /*<<< orphan*/  P4_FUNCDEF ; 
 int STAT_GET_STAT1 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  statGetFuncdef ; 

__attribute__((used)) static void FUNC5(Vdbe *v, int regStat4, int iParam, int regOut){
  FUNC1( regOut!=regStat4 && regOut!=regStat4+1 );
#ifdef SQLITE_ENABLE_STAT4
  sqlite3VdbeAddOp2(v, OP_Integer, iParam, regStat4+1);
#elif SQLITE_DEBUG
  assert( iParam==STAT_GET_STAT1 );
#else
  FUNC0( iParam );
#endif
  FUNC3(v, OP_Function0, 0, regStat4, regOut,
                    (char*)&statGetFuncdef, P4_FUNCDEF);
  FUNC4(v, 1 + IsStat4);
}