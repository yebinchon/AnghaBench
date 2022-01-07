
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct passwd {int pw_name; } ;
struct TYPE_8__ {char* bp; size_t len; } ;
struct TYPE_7__ {size_t argc; TYPE_3__** argv; } ;
struct TYPE_6__ {int argsoff; TYPE_3__** args; } ;
typedef int SCR ;
typedef TYPE_1__ EX_PRIVATE ;
typedef TYPE_2__ EXCMD ;
typedef int CHAR_T ;
typedef int ARGS ;


 int CHAR2INT (int *,int ,size_t,int *,size_t) ;
 TYPE_1__* EXP (int *) ;
 int INT2CHAR (int *,int *,size_t,char*,size_t) ;
 int MEMCPY (char*,int *,size_t) ;
 int argv_alloc (int *,size_t) ;
 int argv_comp ;
 int endpwent () ;
 int free (char*) ;
 struct passwd* getpwent () ;
 scalar_t__ memcmp (char*,int ,size_t) ;
 int qsort (TYPE_3__**,int,int,int ) ;
 int setpwent () ;
 size_t strlen (int ) ;
 char* v_strdup (int *,char*,size_t) ;

__attribute__((used)) static int
argv_flt_user(SCR *sp, EXCMD *excp, CHAR_T *uname, size_t ulen)
{
 EX_PRIVATE *exp;
 struct passwd *pw;
 int off;
 char *np;
 size_t len, nlen;

 exp = EXP(sp);
 off = exp->argsoff;


 INT2CHAR(sp, uname + 1, ulen - 1, np, nlen);
 if ((np = v_strdup(sp, np, nlen)) == ((void*)0))
  return (1);

 setpwent();
 while ((pw = getpwent()) != ((void*)0)) {
  len = strlen(pw->pw_name);
  if (nlen > 0 &&
      (nlen > len || memcmp(np, pw->pw_name, nlen)))
   continue;


  CHAR2INT(sp, pw->pw_name, len + 1, uname, ulen);
  argv_alloc(sp, ulen + 1);
  exp->args[exp->argsoff]->bp[0] = '~';
  MEMCPY(exp->args[exp->argsoff]->bp + 1, uname, ulen);
  exp->args[exp->argsoff]->len = ulen;
  ++exp->argsoff;
  excp->argv = exp->args;
  excp->argc = exp->argsoff;
 }
 endpwent();
 free(np);

 qsort(exp->args + off, exp->argsoff - off, sizeof(ARGS *), argv_comp);
 return (0);
}
