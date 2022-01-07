
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Vdbe ;


 scalar_t__ IsStat4 ;
 int OP_Function0 ;
 int OP_Integer ;
 int P4_FUNCDEF ;
 int STAT_GET_STAT1 ;
 int UNUSED_PARAMETER (int) ;
 int assert (int) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeAddOp4 (int *,int ,int ,int,int,char*,int ) ;
 int sqlite3VdbeChangeP5 (int *,scalar_t__) ;
 int statGetFuncdef ;

__attribute__((used)) static void callStatGet(Vdbe *v, int regStat4, int iParam, int regOut){
  assert( regOut!=regStat4 && regOut!=regStat4+1 );





  UNUSED_PARAMETER( iParam );

  sqlite3VdbeAddOp4(v, OP_Function0, 0, regStat4, regOut,
                    (char*)&statGetFuncdef, P4_FUNCDEF);
  sqlite3VdbeChangeP5(v, 1 + IsStat4);
}
