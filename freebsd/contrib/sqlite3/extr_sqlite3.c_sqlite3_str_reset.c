
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ zText; scalar_t__ nChar; scalar_t__ nAlloc; int printfFlags; int db; } ;
typedef TYPE_1__ StrAccum ;


 int SQLITE_PRINTF_MALLOCED ;
 scalar_t__ isMalloced (TYPE_1__*) ;
 int sqlite3DbFree (int ,scalar_t__) ;

void sqlite3_str_reset(StrAccum *p){
  if( isMalloced(p) ){
    sqlite3DbFree(p->db, p->zText);
    p->printfFlags &= ~SQLITE_PRINTF_MALLOCED;
  }
  p->nAlloc = 0;
  p->nChar = 0;
  p->zText = 0;
}
