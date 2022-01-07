
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct dirent {char* d_name; size_t d_namlen; } ;
struct TYPE_9__ {char* bp; size_t len; } ;
struct TYPE_8__ {size_t argc; TYPE_3__** argv; } ;
struct TYPE_7__ {int argsoff; TYPE_3__** args; } ;
typedef int SCR ;
typedef TYPE_1__ EX_PRIVATE ;
typedef TYPE_2__ EXCMD ;
typedef int DIR ;
typedef char CHAR_T ;
typedef int ARGS ;


 int CHAR2INT (int *,char*,size_t,char*,size_t) ;
 TYPE_1__* EXP (int *) ;
 int INT2CHAR (int *,char*,size_t,char*,size_t) ;
 char* L (char*) ;
 int MEMCPY (char*,char*,size_t) ;
 size_t STRLEN (char*) ;
 char* STRRCHR (char*,char) ;
 int argv_alloc (int *,size_t) ;
 int argv_comp ;
 int argv_flt_user (int *,TYPE_2__*,char*,size_t) ;
 int closedir (int *) ;
 char* expanduser (char*) ;
 int free (char*) ;
 scalar_t__ memcmp (char*,char*,size_t) ;
 int * opendir (char*) ;
 int qsort (TYPE_3__**,int,int,int ) ;
 struct dirent* readdir (int *) ;
 char* v_strdup (int *,char*,size_t) ;
 char* v_wstrdup (int *,char*,size_t) ;

int
argv_flt_path(SCR *sp, EXCMD *excp, CHAR_T *path, size_t plen)
{
 struct dirent *dp;
 DIR *dirp;
 EX_PRIVATE *exp;
 int off;
 size_t dlen, len, nlen;
 CHAR_T *dname;
 CHAR_T *p, *np, *n;
 char *name, *tp, *epd = ((void*)0);
 CHAR_T *wp;
 size_t wlen;

 exp = EXP(sp);


 if ((path = v_wstrdup(sp, path, plen)) == ((void*)0))
  return (1);
 if ((p = STRRCHR(path, '/')) == ((void*)0)) {
  if (*path == '~') {
   int rc;


   rc = argv_flt_user(sp, excp, path, plen);
   free(path);
   return (rc);
  }
  dname = L(".");
  dlen = 0;
  np = path;
 } else {
  if (p == path) {
   dname = L("/");
   dlen = 1;
  } else {
   *p = '\0';
   dname = path;
   dlen = p - path;
  }
  np = p + 1;
 }

 INT2CHAR(sp, dname, dlen + 1, tp, nlen);
 if ((epd = expanduser(tp)) != ((void*)0))
  tp = epd;
 if ((dirp = opendir(tp)) == ((void*)0)) {
  free(epd);
  free(path);
  return (1);
 }
 free(epd);

 INT2CHAR(sp, np, STRLEN(np), tp, nlen);
 if ((name = v_strdup(sp, tp, nlen)) == ((void*)0)) {
  free(path);
  return (1);
 }

 for (off = exp->argsoff; (dp = readdir(dirp)) != ((void*)0);) {
  if (nlen == 0) {
   if (dp->d_name[0] == '.')
    continue;
   len = dp->d_namlen;
  } else {
   len = dp->d_namlen;
   if (len < nlen || memcmp(dp->d_name, name, nlen))
    continue;
  }


  CHAR2INT(sp, dp->d_name, len + 1, wp, wlen);
  argv_alloc(sp, dlen + wlen + 1);
  n = exp->args[exp->argsoff]->bp;
  if (dlen != 0) {
   MEMCPY(n, dname, dlen);
   n += dlen;
   if (dlen > 1 || dname[0] != '/')
    *n++ = '/';
   exp->args[exp->argsoff]->len = dlen + 1;
  }
  MEMCPY(n, wp, wlen);
  exp->args[exp->argsoff]->len += wlen - 1;
  ++exp->argsoff;
  excp->argv = exp->args;
  excp->argc = exp->argsoff;
 }
 closedir(dirp);
 free(name);
 free(path);

 qsort(exp->args + off, exp->argsoff - off, sizeof(ARGS *), argv_comp);
 return (0);
}
