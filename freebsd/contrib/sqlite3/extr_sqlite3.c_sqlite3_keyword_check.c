
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ TK_ID ;
 scalar_t__ sqlite3KeywordCode (int const*,int) ;

int sqlite3_keyword_check(const char *zName, int nName){
  return TK_ID!=sqlite3KeywordCode((const u8*)zName, nName);
}
