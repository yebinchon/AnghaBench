
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char eChar ;
typedef int Char ;


 char DEOF ;
 char DgetC (int ) ;
 int ERR_BADMOD ;
 int ERR_BADSUBST ;
 int INT_MAX ;
 scalar_t__ Isdigit (char) ;
 int Strbuf_append1 (int *,int ) ;
 scalar_t__ any (char*,char) ;
 int dol_flag_a ;
 int dolmcnt ;
 int dolmod ;
 scalar_t__ letter (char) ;
 int seterror (int ) ;
 int stderror (int ,int) ;
 int unDredc (char) ;

__attribute__((used)) static void
fixDolMod(void)
{
    eChar c;

    c = DgetC(0);
    if (c == ':') {
 do {
     c = DgetC(0), dolmcnt = 1, dol_flag_a = 0;
     if (c == 'g' || c == 'a') {
  if (c == 'g')
      dolmcnt = INT_MAX;
  else
      dol_flag_a = 1;
  c = DgetC(0);
     }
     if ((c == 'g' && dolmcnt != INT_MAX) ||
  (c == 'a' && dol_flag_a == 0)) {
  if (c == 'g')
      dolmcnt = INT_MAX;
  else
      dol_flag_a = 1;
  c = DgetC(0);
     }

     if (c == 's') {
  int delimcnt = 2;
  eChar delim = DgetC(0);
  Strbuf_append1(&dolmod, (Char) c);
  Strbuf_append1(&dolmod, (Char) delim);

  if (delim == DEOF || !delim || letter(delim)
      || Isdigit(delim) || any(" \t\n", delim)) {
      seterror(ERR_BADSUBST);
      break;
  }
  while ((c = DgetC(0)) != DEOF) {
      Strbuf_append1(&dolmod, (Char) c);
      if(c == delim) delimcnt--;
      if(!delimcnt) break;
  }
  if(delimcnt) {
      seterror(ERR_BADSUBST);
      break;
  }
  continue;
     }
     if (!any("luhtrqxes", c))
  stderror(ERR_BADMOD, (int)c);
     Strbuf_append1(&dolmod, (Char) c);
     if (c == 'q')
  dolmcnt = INT_MAX;
 }
 while ((c = DgetC(0)) == ':');
 unDredc(c);
    }
    else
 unDredc(c);
}
