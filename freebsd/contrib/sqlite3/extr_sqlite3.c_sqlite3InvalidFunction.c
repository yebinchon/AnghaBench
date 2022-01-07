
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;


 int UNUSED_PARAMETER2 (int,int **) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,char const*) ;
 int sqlite3_result_error (int *,char*,int) ;
 scalar_t__ sqlite3_user_data (int *) ;

__attribute__((used)) static void sqlite3InvalidFunction(
  sqlite3_context *context,
  int NotUsed,
  sqlite3_value **NotUsed2
){
  const char *zName = (const char*)sqlite3_user_data(context);
  char *zErr;
  UNUSED_PARAMETER2(NotUsed, NotUsed2);
  zErr = sqlite3_mprintf(
      "unable to use function %s in the requested context", zName);
  sqlite3_result_error(context, zErr, -1);
  sqlite3_free(zErr);
}
