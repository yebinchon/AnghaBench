
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_str ;


 int sqlite3OomStr ;
 char* sqlite3StrAccumFinish (int *) ;
 int sqlite3_free (int *) ;

char *sqlite3_str_finish(sqlite3_str *p){
  char *z;
  if( p!=0 && p!=&sqlite3OomStr ){
    z = sqlite3StrAccumFinish(p);
    sqlite3_free(p);
  }else{
    z = 0;
  }
  return z;
}
