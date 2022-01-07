
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command {int dummy; } ;
typedef char Char ;


 int ERR_MISSING ;
 int ERR_NAME ;
 int ERR_SYNTAX ;
 int ERR_VARALNUM ;
 int ERR_VARBEGIN ;
 int STRLparen ;
 int STRequal ;
 int STRmf ;
 int STRml ;
 int STRmr ;
 char* Strsave (char*) ;
 int USE (struct command*) ;
 int VAR_FIRST ;
 int VAR_LAST ;
 int VAR_READONLY ;
 int VAR_READWRITE ;
 scalar_t__ alnum (char) ;
 int asx (char*,int,char*) ;
 int cleanup_ignore (char*) ;
 int cleanup_push (char*,int ) ;
 int cleanup_until (char*) ;
 scalar_t__ eq (char*,int ) ;
 char* getinx (char*,int*) ;
 int letter (char) ;
 int plist (int *,int) ;
 char** saveblk (char**) ;
 int set1 (char*,char**,int *,int) ;
 int setv (char*,char*,int) ;
 int shvhed ;
 int stderror (int,...) ;
 int update_vars (char*) ;
 int xfree ;

void
doset(Char **v, struct command *c)
{
    Char *p;
    Char *vp;
    Char **vecp;
    int hadsub;
    int subscr;
    int flags = VAR_READWRITE;
    int first_match = 0;
    int last_match = 0;
    int changed = 0;

    USE(c);
    v++;
    do {
 changed = 0;



 if (*v && eq(*v, STRmr)) {
     flags = VAR_READONLY;
     v++;
     changed = 1;
 }
 if (*v && eq(*v, STRmf) && !last_match) {
     first_match = 1;
     v++;
     changed = 1;
 }
 if (*v && eq(*v, STRml) && !first_match) {
     last_match = 1;
     v++;
     changed = 1;
 }
    } while(changed);
    p = *v++;
    if (p == 0) {
 plist(&shvhed, flags);
 return;
    }
    do {
 hadsub = 0;
 vp = p;
 if (!letter(*p))
     stderror(ERR_NAME | ERR_VARBEGIN);
 do {
     p++;
 } while (alnum(*p));
 if (*p == '[') {
     hadsub++;
     p = getinx(p, &subscr);
 }
 if (*p != '\0' && *p != '=')
     stderror(ERR_NAME | ERR_VARALNUM);
 if (*p == '=') {
     *p++ = '\0';
     if (*p == '\0' && *v != ((void*)0) && **v == '(')
  p = *v++;
 }
 else if (*v && eq(*v, STRequal)) {
     if (*++v != ((void*)0))
  p = *v++;
 }
 if (eq(p, STRLparen)) {
     Char **e = v;

     if (hadsub)
  stderror(ERR_NAME | ERR_SYNTAX);
     for (;;) {
  if (!*e)
      stderror(ERR_NAME | ERR_MISSING, ')');
  if (**e == ')')
      break;
  e++;
     }
     p = *e;
     *e = 0;
     vecp = saveblk(v);
     if (first_match)
        flags |= VAR_FIRST;
     else if (last_match)
        flags |= VAR_LAST;

     set1(vp, vecp, &shvhed, flags);
     *e = p;
     v = e + 1;
 }
 else if (hadsub) {
     Char *copy;

     copy = Strsave(p);
     cleanup_push(copy, xfree);
     asx(vp, subscr, copy);
     cleanup_ignore(copy);
     cleanup_until(copy);
 }
 else
     setv(vp, Strsave(p), flags);
 update_vars(vp);
    } while ((p = *v++) != ((void*)0));
}
