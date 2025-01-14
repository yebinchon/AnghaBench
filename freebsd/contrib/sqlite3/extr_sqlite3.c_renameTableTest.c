
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef scalar_t__ sqlite3_xauth ;
typedef int sqlite3_value ;
typedef int sqlite3_context ;
struct TYPE_19__ {int flags; scalar_t__ xAuth; } ;
typedef TYPE_3__ sqlite3 ;
typedef int sNC ;
struct TYPE_21__ {TYPE_4__* pParse; } ;
struct TYPE_20__ {int rc; TYPE_2__* pNewTrigger; scalar_t__ nErr; TYPE_1__* pNewTable; } ;
struct TYPE_18__ {int pTabSchema; } ;
struct TYPE_17__ {scalar_t__ pSelect; } ;
typedef TYPE_4__ Parse ;
typedef TYPE_5__ NameContext ;


 int SQLITE_LegacyAlter ;
 int SQLITE_OK ;
 int UNUSED_PARAMETER (int) ;
 int memset (TYPE_5__*,int ,int) ;
 int renameColumnParseError (int *,int,int *,int *,TYPE_4__*) ;
 int renameParseCleanup (TYPE_4__*) ;
 int renameParseSql (TYPE_4__*,char const*,int,TYPE_3__*,char const*,int) ;
 int renameResolveTrigger (TYPE_4__*,char const*) ;
 int sqlite3FindDbName (TYPE_3__*,char const*) ;
 int sqlite3SchemaToIndex (TYPE_3__*,int ) ;
 int sqlite3SelectPrep (TYPE_4__*,scalar_t__,TYPE_5__*) ;
 TYPE_3__* sqlite3_context_db_handle (int *) ;
 int sqlite3_result_int (int *,int) ;
 int sqlite3_value_int (int *) ;
 scalar_t__ sqlite3_value_text (int *) ;

__attribute__((used)) static void renameTableTest(
  sqlite3_context *context,
  int NotUsed,
  sqlite3_value **argv
){
  sqlite3 *db = sqlite3_context_db_handle(context);
  char const *zDb = (const char*)sqlite3_value_text(argv[0]);
  char const *zInput = (const char*)sqlite3_value_text(argv[1]);
  int bTemp = sqlite3_value_int(argv[4]);
  int isLegacy = (db->flags & SQLITE_LegacyAlter);


  sqlite3_xauth xAuth = db->xAuth;
  db->xAuth = 0;


  UNUSED_PARAMETER(NotUsed);
  if( zDb && zInput ){
    int rc;
    Parse sParse;
    rc = renameParseSql(&sParse, zDb, 1, db, zInput, bTemp);
    if( rc==SQLITE_OK ){
      if( isLegacy==0 && sParse.pNewTable && sParse.pNewTable->pSelect ){
        NameContext sNC;
        memset(&sNC, 0, sizeof(sNC));
        sNC.pParse = &sParse;
        sqlite3SelectPrep(&sParse, sParse.pNewTable->pSelect, &sNC);
        if( sParse.nErr ) rc = sParse.rc;
      }

      else if( sParse.pNewTrigger ){
        if( isLegacy==0 ){
          rc = renameResolveTrigger(&sParse, bTemp ? 0 : zDb);
        }
        if( rc==SQLITE_OK ){
          int i1 = sqlite3SchemaToIndex(db, sParse.pNewTrigger->pTabSchema);
          int i2 = sqlite3FindDbName(db, zDb);
          if( i1==i2 ) sqlite3_result_int(context, 1);
        }
      }
    }

    if( rc!=SQLITE_OK ){
      renameColumnParseError(context, 1, argv[2], argv[3], &sParse);
    }
    renameParseCleanup(&sParse);
  }


  db->xAuth = xAuth;

}
