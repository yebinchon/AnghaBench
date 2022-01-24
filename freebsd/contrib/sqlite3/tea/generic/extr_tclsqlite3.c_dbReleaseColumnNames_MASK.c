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
struct TYPE_3__ {int nCol; int /*<<< orphan*/ * apColName; } ;
typedef  TYPE_1__ DbEvalContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(DbEvalContext *p){
  if( p->apColName ){
    int i;
    for(i=0; i<p->nCol; i++){
      FUNC0(p->apColName[i]);
    }
    FUNC1((char *)p->apColName);
    p->apColName = 0;
  }
  p->nCol = 0;
}