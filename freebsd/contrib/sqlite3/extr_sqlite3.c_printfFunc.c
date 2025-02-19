
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int sqlite3_value ;
typedef int sqlite3_context ;
struct TYPE_10__ {int * aLimit; } ;
typedef TYPE_1__ sqlite3 ;
struct TYPE_12__ {int nArg; int ** apArg; scalar_t__ nUsed; } ;
struct TYPE_11__ {int nChar; int printfFlags; } ;
typedef TYPE_2__ StrAccum ;
typedef TYPE_3__ PrintfArguments ;


 int SQLITE_DYNAMIC ;
 size_t SQLITE_LIMIT_LENGTH ;
 int SQLITE_PRINTF_SQLFUNC ;
 int sqlite3StrAccumFinish (TYPE_2__*) ;
 int sqlite3StrAccumInit (TYPE_2__*,TYPE_1__*,int ,int ,int ) ;
 TYPE_1__* sqlite3_context_db_handle (int *) ;
 int sqlite3_result_text (int *,int ,int,int ) ;
 int sqlite3_str_appendf (TYPE_2__*,char const*,TYPE_3__*) ;
 scalar_t__ sqlite3_value_text (int *) ;

__attribute__((used)) static void printfFunc(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  PrintfArguments x;
  StrAccum str;
  const char *zFormat;
  int n;
  sqlite3 *db = sqlite3_context_db_handle(context);

  if( argc>=1 && (zFormat = (const char*)sqlite3_value_text(argv[0]))!=0 ){
    x.nArg = argc-1;
    x.nUsed = 0;
    x.apArg = argv+1;
    sqlite3StrAccumInit(&str, db, 0, 0, db->aLimit[SQLITE_LIMIT_LENGTH]);
    str.printfFlags = SQLITE_PRINTF_SQLFUNC;
    sqlite3_str_appendf(&str, zFormat, &x);
    n = str.nChar;
    sqlite3_result_text(context, sqlite3StrAccumFinish(&str), n,
                        SQLITE_DYNAMIC);
  }
}
