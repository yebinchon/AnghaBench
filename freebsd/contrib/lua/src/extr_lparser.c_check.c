
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int token; } ;
struct TYPE_6__ {TYPE_1__ t; } ;
typedef TYPE_2__ LexState ;


 int error_expected (TYPE_2__*,int) ;

__attribute__((used)) static void check (LexState *ls, int c) {
  if (ls->t.token != c)
    error_expected(ls, c);
}
