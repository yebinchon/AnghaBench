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
struct TYPE_2__ {scalar_t__ pLog; } ;
typedef  TYPE_1__ ShellState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,int,char const*) ; 

__attribute__((used)) static void FUNC2(void *pArg, int iErrCode, const char *zMsg){
  ShellState *p = (ShellState*)pArg;
  if( p->pLog==0 ) return;
  FUNC1(p->pLog, "(%d) %s\n", iErrCode, zMsg);
  FUNC0(p->pLog);
}