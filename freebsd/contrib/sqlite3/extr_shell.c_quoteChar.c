
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isalnum (unsigned char) ;
 int isalpha (unsigned char) ;
 scalar_t__ sqlite3_keyword_check (char const*,int) ;

__attribute__((used)) static char quoteChar(const char *zName){
  int i;
  if( !isalpha((unsigned char)zName[0]) && zName[0]!='_' ) return '"';
  for(i=0; zName[i]; i++){
    if( !isalnum((unsigned char)zName[i]) && zName[i]!='_' ) return '"';
  }
  return sqlite3_keyword_check(zName, i) ? '"' : 0;
}
