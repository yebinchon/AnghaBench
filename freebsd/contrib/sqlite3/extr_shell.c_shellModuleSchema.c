
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;


 int UNUSED_PARAMETER (int) ;
 int free (char*) ;
 char* shellFakeSchema (int ,int ,char const*) ;
 int sqlite3_context_db_handle (int *) ;
 int sqlite3_free ;
 int sqlite3_mprintf (char*,char*) ;
 int sqlite3_result_text (int *,int ,int,int ) ;
 scalar_t__ sqlite3_value_text (int *) ;

__attribute__((used)) static void shellModuleSchema(
  sqlite3_context *pCtx,
  int nVal,
  sqlite3_value **apVal
){
  const char *zName = (const char*)sqlite3_value_text(apVal[0]);
  char *zFake = shellFakeSchema(sqlite3_context_db_handle(pCtx), 0, zName);
  UNUSED_PARAMETER(nVal);
  if( zFake ){
    sqlite3_result_text(pCtx, sqlite3_mprintf("/* %s */", zFake),
                        -1, sqlite3_free);
    free(zFake);
  }
}
