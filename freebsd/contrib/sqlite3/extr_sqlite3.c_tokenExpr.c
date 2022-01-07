
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_17__ {int n; int z; } ;
typedef TYPE_4__ Token ;
struct TYPE_16__ {char* zToken; } ;
struct TYPE_15__ {scalar_t__ pTab; } ;
struct TYPE_14__ {scalar_t__ pList; } ;
struct TYPE_19__ {int iAgg; int nHeight; TYPE_3__ u; scalar_t__ iColumn; scalar_t__ iTable; scalar_t__ op2; TYPE_2__ y; scalar_t__ pAggInfo; TYPE_1__ x; scalar_t__ pRight; scalar_t__ pLeft; int flags; scalar_t__ affExpr; scalar_t__ op; } ;
struct TYPE_18__ {int db; } ;
typedef TYPE_5__ Parse ;
typedef TYPE_6__ Expr ;


 int EP_Leaf ;
 scalar_t__ IN_RENAME_OBJECT ;
 int memcpy (char*,int ,int) ;
 TYPE_6__* sqlite3DbMallocRawNN (int ,int) ;
 int sqlite3DequoteExpr (TYPE_6__*) ;
 scalar_t__ sqlite3Isquote (char) ;
 scalar_t__ sqlite3RenameTokenMap (TYPE_5__*,void*,TYPE_4__*) ;

__attribute__((used)) static Expr *tokenExpr(Parse *pParse, int op, Token t){
    Expr *p = sqlite3DbMallocRawNN(pParse->db, sizeof(Expr)+t.n+1);
    if( p ){

      p->op = (u8)op;
      p->affExpr = 0;
      p->flags = EP_Leaf;
      p->iAgg = -1;
      p->pLeft = p->pRight = 0;
      p->x.pList = 0;
      p->pAggInfo = 0;
      p->y.pTab = 0;
      p->op2 = 0;
      p->iTable = 0;
      p->iColumn = 0;
      p->u.zToken = (char*)&p[1];
      memcpy(p->u.zToken, t.z, t.n);
      p->u.zToken[t.n] = 0;
      if( sqlite3Isquote(p->u.zToken[0]) ){
        sqlite3DequoteExpr(p);
      }



      if( IN_RENAME_OBJECT ){
        return (Expr*)sqlite3RenameTokenMap(pParse, (void*)p, &t);
      }
    }
    return p;
  }
