
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int Vdbe ;


 scalar_t__ ALWAYS (int) ;
 int OP_Real ;
 int P4_REAL ;
 int SQLITE_UTF8 ;
 int assert (int) ;
 int sqlite3AtoF (char const*,double*,int ,int ) ;
 int sqlite3IsNaN (double) ;
 int sqlite3Strlen30 (char const*) ;
 int sqlite3VdbeAddOp4Dup8 (int *,int ,int ,int,int ,int *,int ) ;

__attribute__((used)) static void codeReal(Vdbe *v, const char *z, int negateFlag, int iMem){
  if( ALWAYS(z!=0) ){
    double value;
    sqlite3AtoF(z, &value, sqlite3Strlen30(z), SQLITE_UTF8);
    assert( !sqlite3IsNaN(value) );
    if( negateFlag ) value = -value;
    sqlite3VdbeAddOp4Dup8(v, OP_Real, 0, iMem, 0, (u8*)&value, P4_REAL);
  }
}
