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
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 char SQLITE_AFF_BLOB ; 
 char FUNC0 (int /*<<< orphan*/ *,char) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(
  Expr *pRight,                   /* RHS of comparison */
  int n,                          /* Number of vector elements in comparison */
  char *zAff                      /* Affinity string to modify */
){
  int i;
  for(i=0; i<n; i++){
    Expr *p = FUNC2(pRight, i);
    if( FUNC0(p, zAff[i])==SQLITE_AFF_BLOB
     || FUNC1(p, zAff[i])
    ){
      zAff[i] = SQLITE_AFF_BLOB;
    }
  }
}