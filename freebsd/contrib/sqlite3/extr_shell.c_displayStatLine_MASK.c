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
typedef  int /*<<< orphan*/  zLine ;
typedef  int sqlite3_int64 ;
struct TYPE_3__ {int /*<<< orphan*/  out; } ;
typedef  TYPE_1__ ShellState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int,int*,int*,int) ; 

__attribute__((used)) static void FUNC3(
  ShellState *p,            /* The shell context */
  char *zLabel,             /* Label for this one line */
  char *zFormat,            /* Format for the result */
  int iStatusCtrl,          /* Which status to display */
  int bReset                /* True to reset the stats */
){
  sqlite3_int64 iCur = -1;
  sqlite3_int64 iHiwtr = -1;
  int i, nPercent;
  char zLine[200];
  FUNC2(iStatusCtrl, &iCur, &iHiwtr, bReset);
  for(i=0, nPercent=0; zFormat[i]; i++){
    if( zFormat[i]=='%' ) nPercent++;
  }
  if( nPercent>1 ){
    FUNC1(sizeof(zLine), zLine, zFormat, iCur, iHiwtr);
  }else{
    FUNC1(sizeof(zLine), zLine, zFormat, iHiwtr);
  }
  FUNC0(p->out, "%-36s %s\n", zLabel, zLine);
}