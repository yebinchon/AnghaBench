
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vfs ;
struct TYPE_3__ {char const* (* xNextSystemCall ) (TYPE_1__*,char const*) ;} ;


 TYPE_1__* ORIGVFS (int *) ;
 char const* stub1 (TYPE_1__*,char const*) ;

__attribute__((used)) static const char *apndNextSystemCall(sqlite3_vfs *pVfs, const char *zName){
  return ORIGVFS(pVfs)->xNextSystemCall(ORIGVFS(pVfs), zName);
}
