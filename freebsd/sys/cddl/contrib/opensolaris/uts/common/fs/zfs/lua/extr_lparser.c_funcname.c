
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int expdesc ;
struct TYPE_6__ {char token; } ;
struct TYPE_7__ {TYPE_1__ t; } ;
typedef TYPE_2__ LexState ;


 int fieldsel (TYPE_2__*,int *) ;
 int singlevar (TYPE_2__*,int *) ;

__attribute__((used)) static int funcname (LexState *ls, expdesc *v) {

  int ismethod = 0;
  singlevar(ls, v);
  while (ls->t.token == '.')
    fieldsel(ls, v);
  if (ls->t.token == ':') {
    ismethod = 1;
    fieldsel(ls, v);
  }
  return ismethod;
}
