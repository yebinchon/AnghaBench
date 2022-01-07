
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_8__ {TYPE_6__* pIndex; } ;
struct TYPE_7__ {scalar_t__ idxStr; scalar_t__ needFree; } ;
struct TYPE_9__ {TYPE_2__ btree; TYPE_1__ vtab; } ;
struct TYPE_10__ {int wsFlags; TYPE_3__ u; } ;
typedef TYPE_4__ WhereLoop ;
struct TYPE_11__ {int zColAff; } ;


 int WHERE_AUTO_INDEX ;
 int WHERE_VIRTUALTABLE ;
 int sqlite3DbFree (int *,int ) ;
 int sqlite3DbFreeNN (int *,TYPE_6__*) ;
 int sqlite3_free (scalar_t__) ;

__attribute__((used)) static void whereLoopClearUnion(sqlite3 *db, WhereLoop *p){
  if( p->wsFlags & (WHERE_VIRTUALTABLE|WHERE_AUTO_INDEX) ){
    if( (p->wsFlags & WHERE_VIRTUALTABLE)!=0 && p->u.vtab.needFree ){
      sqlite3_free(p->u.vtab.idxStr);
      p->u.vtab.needFree = 0;
      p->u.vtab.idxStr = 0;
    }else if( (p->wsFlags & WHERE_AUTO_INDEX)!=0 && p->u.btree.pIndex!=0 ){
      sqlite3DbFree(db, p->u.btree.pIndex->zColAff);
      sqlite3DbFreeNN(db, p->u.btree.pIndex);
      p->u.btree.pIndex = 0;
    }
  }
}
