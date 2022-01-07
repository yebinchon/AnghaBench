
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vfs ;
struct TYPE_3__ {int (* xFullPathname ) (TYPE_1__*,char const*,int,char*) ;} ;


 TYPE_1__* ORIGVFS (int *) ;
 int stub1 (TYPE_1__*,char const*,int,char*) ;

__attribute__((used)) static int apndFullPathname(
  sqlite3_vfs *pVfs,
  const char *zPath,
  int nOut,
  char *zOut
){
  return ORIGVFS(pVfs)->xFullPathname(ORIGVFS(pVfs),zPath,nOut,zOut);
}
