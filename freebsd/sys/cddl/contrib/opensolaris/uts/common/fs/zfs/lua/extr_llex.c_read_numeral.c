
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int current; int buff; int decpoint; } ;
struct TYPE_11__ {int r; } ;
typedef TYPE_1__ SemInfo ;
typedef TYPE_2__ LexState ;


 int buff2d (int ,int *) ;
 int buffreplace (TYPE_2__*,char,int ) ;
 scalar_t__ check_next (TYPE_2__*,char const*) ;
 int lisdigit (int) ;
 scalar_t__ lisxdigit (int) ;
 int lua_assert (int ) ;
 int save (TYPE_2__*,char) ;
 int save_and_next (TYPE_2__*) ;
 int trydecpoint (TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static void read_numeral (LexState *ls, SemInfo *seminfo) {
  const char *expo = "Ee";
  int first = ls->current;
  lua_assert(lisdigit(ls->current));
  save_and_next(ls);
  if (first == '0' && check_next(ls, "Xx"))
    expo = "Pp";
  for (;;) {
    if (check_next(ls, expo))
      check_next(ls, "+-");
    if (lisxdigit(ls->current) || ls->current == '.')
      save_and_next(ls);
    else break;
  }
  save(ls, '\0');
  buffreplace(ls, '.', ls->decpoint);
  if (!buff2d(ls->buff, &seminfo->r))
    trydecpoint(ls, seminfo);
}
