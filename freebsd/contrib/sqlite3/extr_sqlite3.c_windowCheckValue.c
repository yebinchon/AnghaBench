
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Vdbe ;
typedef int Parse ;


 int ArraySize (char const**) ;
 int OE_Abort ;


 int OP_Halt ;
 int OP_Integer ;
 int OP_MustBeInt ;
 int OP_String8 ;
 int P4_STATIC ;
 int SQLITE_AFF_NUMERIC ;
 int SQLITE_ERROR ;
 int SQLITE_JUMPIFNULL ;
 int VdbeCoverage (int *) ;
 int VdbeCoverageIf (int *,int) ;
 int VdbeCoverageNeverNullIf (int *,int) ;
 int WINDOW_STARTING_NUM ;
 int assert (int) ;
 int sqlite3GetTempReg (int *) ;
 int * sqlite3GetVdbe (int *) ;
 int sqlite3MayAbort (int *) ;
 int sqlite3ReleaseTempReg (int *,int) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeAddOp3 (int *,int const,int,int,int) ;
 int sqlite3VdbeAddOp4 (int *,int ,int ,int,int ,char*,int ) ;
 int sqlite3VdbeAppendP4 (int *,void*,int ) ;
 int sqlite3VdbeChangeP5 (int *,int) ;
 int sqlite3VdbeCurrentAddr (int *) ;

__attribute__((used)) static void windowCheckValue(Parse *pParse, int reg, int eCond){
  static const char *azErr[] = {
    "frame starting offset must be a non-negative integer",
    "frame ending offset must be a non-negative integer",
    "second argument to nth_value must be a positive integer",
    "frame starting offset must be a non-negative number",
    "frame ending offset must be a non-negative number",
  };
  static int aOp[] = { 129, 129, 128, 129, 129 };
  Vdbe *v = sqlite3GetVdbe(pParse);
  int regZero = sqlite3GetTempReg(pParse);
  assert( eCond>=0 && eCond<ArraySize(azErr) );
  sqlite3VdbeAddOp2(v, OP_Integer, 0, regZero);
  if( eCond>=WINDOW_STARTING_NUM ){
    int regString = sqlite3GetTempReg(pParse);
    sqlite3VdbeAddOp4(v, OP_String8, 0, regString, 0, "", P4_STATIC);
    sqlite3VdbeAddOp3(v, 129, regString, sqlite3VdbeCurrentAddr(v)+2, reg);
    sqlite3VdbeChangeP5(v, SQLITE_AFF_NUMERIC|SQLITE_JUMPIFNULL);
    VdbeCoverage(v);
    assert( eCond==3 || eCond==4 );
    VdbeCoverageIf(v, eCond==3);
    VdbeCoverageIf(v, eCond==4);
  }else{
    sqlite3VdbeAddOp2(v, OP_MustBeInt, reg, sqlite3VdbeCurrentAddr(v)+2);
    VdbeCoverage(v);
    assert( eCond==0 || eCond==1 || eCond==2 );
    VdbeCoverageIf(v, eCond==0);
    VdbeCoverageIf(v, eCond==1);
    VdbeCoverageIf(v, eCond==2);
  }
  sqlite3VdbeAddOp3(v, aOp[eCond], regZero, sqlite3VdbeCurrentAddr(v)+2, reg);
  VdbeCoverageNeverNullIf(v, eCond==0);
  VdbeCoverageNeverNullIf(v, eCond==1);
  VdbeCoverageNeverNullIf(v, eCond==2);
  VdbeCoverageNeverNullIf(v, eCond==3);
  VdbeCoverageNeverNullIf(v, eCond==4);
  sqlite3MayAbort(pParse);
  sqlite3VdbeAddOp2(v, OP_Halt, SQLITE_ERROR, OE_Abort);
  sqlite3VdbeAppendP4(v, (void*)azErr[eCond], P4_STATIC);
  sqlite3ReleaseTempReg(pParse, regZero);
}
