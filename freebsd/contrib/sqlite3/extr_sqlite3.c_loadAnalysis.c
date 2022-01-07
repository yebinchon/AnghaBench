
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Vdbe ;
typedef int Parse ;


 int OP_LoadAnalysis ;
 int * sqlite3GetVdbe (int *) ;
 int sqlite3VdbeAddOp1 (int *,int ,int) ;

__attribute__((used)) static void loadAnalysis(Parse *pParse, int iDb){
  Vdbe *v = sqlite3GetVdbe(pParse);
  if( v ){
    sqlite3VdbeAddOp1(v, OP_LoadAnalysis, iDb);
  }
}
