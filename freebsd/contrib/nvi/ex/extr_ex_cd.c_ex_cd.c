
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct passwd {char* pw_dir; } ;
struct TYPE_14__ {char* bp; int len; } ;
struct TYPE_13__ {int argc; TYPE_4__** argv; int iflags; } ;
struct TYPE_12__ {TYPE_1__* frp; int ep; } ;
struct TYPE_11__ {char* name; } ;
typedef TYPE_2__ SCR ;
typedef TYPE_3__ EXCMD ;
typedef TYPE_4__ ARGS ;


 int E_C_FORCE ;
 int FL_ISSET (int ,int ) ;
 scalar_t__ F_ISSET (int ,int ) ;
 int F_MODIFIED ;
 int INT2CHAR (TYPE_2__*,char*,int ,char*,size_t) ;
 int M_ERR ;
 int M_INFO ;
 int M_SYSERR ;
 int O_CDPATH ;
 char* O_STR (TYPE_2__*,int ) ;
 int abort () ;
 int chdir (char*) ;
 int free (char*) ;
 char* getcwd (int *,int ) ;
 char* getenv (char*) ;
 struct passwd* getpwuid (int ) ;
 int getuid () ;
 char* join (char*,char*) ;
 int msgq (TYPE_2__*,int ,char*) ;
 int msgq_str (TYPE_2__*,int ,char*,char*) ;

int
ex_cd(SCR *sp, EXCMD *cmdp)
{
 struct passwd *pw;
 ARGS *ap;
 int savech;
 char *dir, *p, *t;
 char *buf;
 size_t dlen;







 if (F_ISSET(sp->ep, F_MODIFIED) &&
     !FL_ISSET(cmdp->iflags, E_C_FORCE) && sp->frp->name[0] != '/') {
  msgq(sp, M_ERR,
    "120|File modified since last complete write; write or use ! to override");
  return (1);
 }

 switch (cmdp->argc) {
 case 0:

  if ((dir = getenv("HOME")) == ((void*)0)) {
   if ((pw = getpwuid(getuid())) == ((void*)0) ||
       pw->pw_dir == ((void*)0) || pw->pw_dir[0] == '\0') {
    msgq(sp, M_ERR,
      "121|Unable to find home directory location");
    return (1);
   }
   dir = pw->pw_dir;
  }
  break;
 case 1:
  INT2CHAR(sp, cmdp->argv[0]->bp, cmdp->argv[0]->len + 1,
    dir, dlen);
  break;
 default:
  abort();
 }






 if (!chdir(dir))
  return (0);





 if (cmdp->argc == 0 ||
     (ap = cmdp->argv[0])->bp[0] == '/' ||
     (ap->len == 1 && ap->bp[0] == '.') ||
     (ap->len >= 2 && ap->bp[0] == '.' && ap->bp[1] == '.' &&
     (ap->bp[2] == '/' || ap->bp[2] == '\0')))
  goto err;


 for (p = t = O_STR(sp, O_CDPATH);; ++p)
  if (*p == '\0' || *p == ':') {




   if (t < p && (p - t != 1 || *t != '.')) {
    savech = *p;
    *p = '\0';
    if ((buf = join(t, dir)) == ((void*)0)) {
     msgq(sp, M_SYSERR, ((void*)0));
     return (1);
    }
    *p = savech;
    if (!chdir(buf)) {
     free(buf);
     if ((buf = getcwd(((void*)0), 0)) != ((void*)0)) {
  msgq_str(sp, M_INFO, buf, "122|New current directory: %s");
      free(buf);
     }
     return (0);
    }
    free(buf);
   }
   t = p + 1;
   if (*p == '\0')
    break;
  }

err: msgq_str(sp, M_SYSERR, dir, "%s");
 return (1);
}
