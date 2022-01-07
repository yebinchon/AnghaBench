
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char token; } ;
struct TYPE_6__ {TYPE_1__ t; } ;
typedef TYPE_2__ LexState ;


 char TK_DBCOLON ;
 int statement (TYPE_2__*) ;

__attribute__((used)) static void skipnoopstat (LexState *ls) {
  while (ls->t.token == ';' || ls->t.token == TK_DBCOLON)
    statement(ls);
}
