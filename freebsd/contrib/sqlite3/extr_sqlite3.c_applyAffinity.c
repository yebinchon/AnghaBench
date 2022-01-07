
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {int flags; } ;
typedef TYPE_1__ Mem ;


 int MEM_Int ;
 int MEM_IntReal ;
 int MEM_Real ;
 int MEM_Str ;
 char SQLITE_AFF_INTEGER ;
 char SQLITE_AFF_NUMERIC ;
 char SQLITE_AFF_REAL ;
 char SQLITE_AFF_TEXT ;
 int applyNumericAffinity (TYPE_1__*,int) ;
 int assert (int) ;
 int sqlite3VdbeIntegerAffinity (TYPE_1__*) ;
 int sqlite3VdbeMemStringify (TYPE_1__*,int ,int) ;
 int testcase (int) ;

__attribute__((used)) static void applyAffinity(
  Mem *pRec,
  char affinity,
  u8 enc
){
  if( affinity>=SQLITE_AFF_NUMERIC ){
    assert( affinity==SQLITE_AFF_INTEGER || affinity==SQLITE_AFF_REAL
             || affinity==SQLITE_AFF_NUMERIC );
    if( (pRec->flags & MEM_Int)==0 ){
      if( (pRec->flags & MEM_Real)==0 ){
        if( pRec->flags & MEM_Str ) applyNumericAffinity(pRec,1);
      }else{
        sqlite3VdbeIntegerAffinity(pRec);
      }
    }
  }else if( affinity==SQLITE_AFF_TEXT ){





    if( 0==(pRec->flags&MEM_Str) ){
      if( (pRec->flags&(MEM_Real|MEM_Int|MEM_IntReal)) ){
        testcase( pRec->flags & MEM_Int );
        testcase( pRec->flags & MEM_Real );
        testcase( pRec->flags & MEM_IntReal );
        sqlite3VdbeMemStringify(pRec, enc, 1);
      }
    }
    pRec->flags &= ~(MEM_Real|MEM_Int|MEM_IntReal);
  }
}
