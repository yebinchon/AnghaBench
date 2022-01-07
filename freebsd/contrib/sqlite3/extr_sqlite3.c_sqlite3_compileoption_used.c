
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SQLITE_MISUSE_BKPT ;
 char** sqlite3CompileOptions (int*) ;
 scalar_t__ sqlite3IsIdChar (unsigned char) ;
 scalar_t__ sqlite3StrNICmp (char const*,char const*,int) ;
 int sqlite3Strlen30 (char const*) ;

int sqlite3_compileoption_used(const char *zOptName){
  int i, n;
  int nOpt;
  const char **azCompileOpt;
  azCompileOpt = sqlite3CompileOptions(&nOpt);

  if( sqlite3StrNICmp(zOptName, "SQLITE_", 7)==0 ) zOptName += 7;
  n = sqlite3Strlen30(zOptName);



  for(i=0; i<nOpt; i++){
    if( sqlite3StrNICmp(zOptName, azCompileOpt[i], n)==0
     && sqlite3IsIdChar((unsigned char)azCompileOpt[i][n])==0
    ){
      return 1;
    }
  }
  return 0;
}
