
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ sqlite3_strglob (char*,char const*) ;
 int utf8_printf (int *,char*,char const*,char const*) ;

__attribute__((used)) static void printSchemaLine(FILE *out, const char *z, const char *zTail){
  if( z==0 ) return;
  if( zTail==0 ) return;
  if( sqlite3_strglob("CREATE TABLE ['\"]*", z)==0 ){
    utf8_printf(out, "CREATE TABLE IF NOT EXISTS %s%s", z+13, zTail);
  }else{
    utf8_printf(out, "%s%s", z, zTail);
  }
}
