
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ zTempFile; scalar_t__ doXdgOpen; } ;
typedef TYPE_1__ ShellState ;


 scalar_t__ shellDeleteFile (scalar_t__) ;
 int sqlite3_free (scalar_t__) ;

__attribute__((used)) static void clearTempFile(ShellState *p){
  if( p->zTempFile==0 ) return;
  if( p->doXdgOpen ) return;
  if( shellDeleteFile(p->zTempFile) ) return;
  sqlite3_free(p->zTempFile);
  p->zTempFile = 0;
}
