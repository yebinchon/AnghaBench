
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dfa {scalar_t__ nregexps; int depth; } ;
typedef int mbstate_t ;


 scalar_t__ CAT ;
 scalar_t__ END ;
 int LC_COLLATE ;
 int MB_CUR_MAX ;
 scalar_t__ ORTOP ;
 int _ (char*) ;
 int addtok (scalar_t__) ;
 scalar_t__ cur_mb_index ;
 scalar_t__ cur_mb_len ;
 int depth ;
 struct dfa* dfa ;
 int dfaerror (int ) ;
 int hard_LC_COLLATE ;
 int hard_locale (int ) ;
 int laststart ;
 scalar_t__ lasttok ;
 scalar_t__ lex () ;
 size_t lexleft ;
 char const* lexptr ;
 char const* lexstart ;
 int mbs ;
 int memset (int *,int ,int) ;
 scalar_t__ parens ;
 int regexp (int) ;
 int syntax_bits_set ;
 scalar_t__ tok ;

void
dfaparse (char const *s, size_t len, struct dfa *d)
{
  dfa = d;
  lexstart = lexptr = s;
  lexleft = len;
  lasttok = END;
  laststart = 1;
  parens = 0;
  hard_LC_COLLATE = hard_locale (LC_COLLATE);
  if (! syntax_bits_set)
    dfaerror(_("No syntax specified"));

  tok = lex();
  depth = d->depth;

  regexp(1);

  if (tok != END)
    dfaerror(_("Unbalanced )"));

  addtok(END - d->nregexps);
  addtok(CAT);

  if (d->nregexps)
    addtok(ORTOP);

  ++d->nregexps;
}
