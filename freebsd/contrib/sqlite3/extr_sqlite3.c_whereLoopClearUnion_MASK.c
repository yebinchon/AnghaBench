#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_8__ {TYPE_6__* pIndex; } ;
struct TYPE_7__ {scalar_t__ idxStr; scalar_t__ needFree; } ;
struct TYPE_9__ {TYPE_2__ btree; TYPE_1__ vtab; } ;
struct TYPE_10__ {int wsFlags; TYPE_3__ u; } ;
typedef  TYPE_4__ WhereLoop ;
struct TYPE_11__ {int /*<<< orphan*/  zColAff; } ;

/* Variables and functions */
 int WHERE_AUTO_INDEX ; 
 int WHERE_VIRTUALTABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(sqlite3 *db, WhereLoop *p){
  if( p->wsFlags & (WHERE_VIRTUALTABLE|WHERE_AUTO_INDEX) ){
    if( (p->wsFlags & WHERE_VIRTUALTABLE)!=0 && p->u.vtab.needFree ){
      FUNC2(p->u.vtab.idxStr);
      p->u.vtab.needFree = 0;
      p->u.vtab.idxStr = 0;
    }else if( (p->wsFlags & WHERE_AUTO_INDEX)!=0 && p->u.btree.pIndex!=0 ){
      FUNC0(db, p->u.btree.pIndex->zColAff);
      FUNC1(db, p->u.btree.pIndex);
      p->u.btree.pIndex = 0;
    }
  }
}