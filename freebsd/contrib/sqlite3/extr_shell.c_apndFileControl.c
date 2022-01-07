
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* pMethods; } ;
typedef TYPE_2__ sqlite3_file ;
struct TYPE_10__ {int iPgOne; } ;
struct TYPE_8__ {int (* xFileControl ) (TYPE_2__*,int,void*) ;} ;
typedef TYPE_3__ ApndFile ;


 TYPE_2__* ORIGFILE (TYPE_2__*) ;
 int SQLITE_FCNTL_VFSNAME ;
 int SQLITE_OK ;
 char* sqlite3_mprintf (char*,int ,char*) ;
 int stub1 (TYPE_2__*,int,void*) ;

__attribute__((used)) static int apndFileControl(sqlite3_file *pFile, int op, void *pArg){
  ApndFile *p = (ApndFile *)pFile;
  int rc;
  pFile = ORIGFILE(pFile);
  rc = pFile->pMethods->xFileControl(pFile, op, pArg);
  if( rc==SQLITE_OK && op==SQLITE_FCNTL_VFSNAME ){
    *(char**)pArg = sqlite3_mprintf("apnd(%lld)/%z", p->iPgOne, *(char**)pArg);
  }
  return rc;
}
