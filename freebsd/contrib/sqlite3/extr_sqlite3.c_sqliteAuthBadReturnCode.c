
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rc; } ;
typedef TYPE_1__ Parse ;


 int SQLITE_ERROR ;
 int sqlite3ErrorMsg (TYPE_1__*,char*) ;

__attribute__((used)) static void sqliteAuthBadReturnCode(Parse *pParse){
  sqlite3ErrorMsg(pParse, "authorizer malfunction");
  pParse->rc = SQLITE_ERROR;
}
