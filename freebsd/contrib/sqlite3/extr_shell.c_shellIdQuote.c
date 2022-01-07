
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;


 int UNUSED_PARAMETER (int) ;
 int sqlite3_free ;
 char* sqlite3_mprintf (char*,char const*) ;
 int sqlite3_result_text (int *,char*,int,int ) ;
 scalar_t__ sqlite3_value_text (int *) ;

__attribute__((used)) static void shellIdQuote(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  const char *zName = (const char*)sqlite3_value_text(argv[0]);
  UNUSED_PARAMETER(argc);
  if( zName ){
    char *z = sqlite3_mprintf("\"%w\"", zName);
    sqlite3_result_text(context, z, -1, sqlite3_free);
  }
}
