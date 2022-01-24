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
struct CallCount {int nStep; } ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2(
  sqlite3_context *pCtx, 
  int nArg,
  sqlite3_value **apArg
){
  struct CallCount *p;
  p = (struct CallCount*)FUNC1(pCtx, sizeof(*p));
  if( p ) p->nStep = 1;
  FUNC0(nArg);
  FUNC0(apArg);
}