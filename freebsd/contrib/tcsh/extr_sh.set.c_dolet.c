
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varent {int * vec; } ;
struct command {int dummy; } ;
typedef char Char ;


 int ERR_ASSIGN ;
 int ERR_NAME ;
 int ERR_SYNTAX ;
 int ERR_UNKNOWNOP ;
 int ERR_VARBEGIN ;
 char* STR1 ;
 char* Strsave (char*) ;
 int USE (struct command*) ;
 int VAR_READWRITE ;
 scalar_t__ alnum (char) ;
 scalar_t__ any (char*,char) ;
 int asx (char*,int,char*) ;
 int cleanup_ignore (char*) ;
 int cleanup_push (char*,int ) ;
 int cleanup_until (char*) ;
 char* getinx (char*,int*) ;
 struct varent* getvx (char*,int) ;
 scalar_t__ letter (char) ;
 char* operate (char,int ,char*) ;
 int prvars () ;
 int setv (char*,char*,int ) ;
 int stderror (int) ;
 int update_vars (char*) ;
 int varval (char*) ;
 int xfree ;
 char* xset (char*,char***) ;

void
dolet(Char **v, struct command *dummy)
{
    Char *p;
    Char *vp, c, op;
    int hadsub;
    int subscr;

    USE(dummy);
    v++;
    p = *v++;
    if (p == 0) {
 prvars();
 return;
    }
    do {
 hadsub = 0;
 vp = p;
 if (letter(*p))
     for (; alnum(*p); p++)
  continue;
 if (vp == p || !letter(*vp))
     stderror(ERR_NAME | ERR_VARBEGIN);
 if (*p == '[') {
     hadsub++;
     p = getinx(p, &subscr);
 }
 if (*p == 0 && *v)
     p = *v++;
 if ((op = *p) != 0)
     *p++ = 0;
 else
     stderror(ERR_NAME | ERR_ASSIGN);





 if (*p == '\0' && *v == ((void*)0))
     stderror(ERR_NAME | ERR_ASSIGN);

 vp = Strsave(vp);
 cleanup_push(vp, xfree);
 if (op == '=') {
     c = '=';
     p = xset(p, &v);
 }
 else {
     c = *p++;
     if (any("+-", c)) {
  if (c != op || *p)
      stderror(ERR_NAME | ERR_UNKNOWNOP);
  p = Strsave(STR1);
     }
     else {
  if (any("<>", op)) {
      if (c != op)
   stderror(ERR_NAME | ERR_UNKNOWNOP);
      stderror(ERR_NAME | ERR_SYNTAX);
  }
  if (c != '=')
      stderror(ERR_NAME | ERR_UNKNOWNOP);
  p = xset(p, &v);
     }
 }
 cleanup_push(p, xfree);
 if (op == '=') {
     if (hadsub)
  asx(vp, subscr, p);
     else
  setv(vp, p, VAR_READWRITE);
     cleanup_ignore(p);
 }
 else if (hadsub) {
     struct varent *gv = getvx(vp, subscr);
     Char *val;

     val = operate(op, gv->vec[subscr - 1], p);
     cleanup_push(val, xfree);
     asx(vp, subscr, val);
     cleanup_ignore(val);
     cleanup_until(val);
 }
 else {
     Char *val;

     val = operate(op, varval(vp), p);
     cleanup_push(val, xfree);
     setv(vp, val, VAR_READWRITE);
     cleanup_ignore(val);
     cleanup_until(val);
 }
 update_vars(vp);
 cleanup_until(vp);
    } while ((p = *v++) != ((void*)0));
}
