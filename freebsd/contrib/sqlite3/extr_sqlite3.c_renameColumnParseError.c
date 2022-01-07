
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_value ;
typedef int sqlite3_context ;
struct TYPE_3__ {int zErrMsg; } ;
typedef TYPE_1__ Parse ;


 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,char const*,char const*,char*,int ) ;
 int sqlite3_result_error (int *,char*,int) ;
 scalar_t__ sqlite3_value_text (int *) ;

__attribute__((used)) static void renameColumnParseError(
  sqlite3_context *pCtx,
  int bPost,
  sqlite3_value *pType,
  sqlite3_value *pObject,
  Parse *pParse
){
  const char *zT = (const char*)sqlite3_value_text(pType);
  const char *zN = (const char*)sqlite3_value_text(pObject);
  char *zErr;

  zErr = sqlite3_mprintf("error in %s %s%s: %s",
      zT, zN, (bPost ? " after rename" : ""),
      pParse->zErrMsg
  );
  sqlite3_result_error(pCtx, zErr, -1);
  sqlite3_free(zErr);
}
