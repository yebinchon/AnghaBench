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
struct CallCount {int /*<<< orphan*/  nStep; } ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(
  sqlite3_context *pCtx, 
  int nArg,
  sqlite3_value **apArg
){
  struct CallCount *p;
  FUNC0(nArg); FUNC1( nArg==0 );
  FUNC0(apArg);
  p = (struct CallCount*)FUNC2(pCtx, sizeof(*p));
  p->nStep++;
}