
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int cmd ;
typedef int buf ;
struct TYPE_10__ {char* oname; TYPE_1__* focus; } ;
struct TYPE_9__ {int * gp; } ;
typedef TYPE_1__ SCR ;
typedef int GS ;
typedef int FILE ;
typedef TYPE_2__ CL_PRIVATE ;


 TYPE_2__* CLP (TYPE_1__*) ;
 int CL_RENAME ;
 int CL_RENAME_OK ;
 int F_CLR (TYPE_2__*,int ) ;
 scalar_t__ F_ISSET (TYPE_2__*,int ) ;
 int F_SET (TYPE_2__*,int ) ;
 int GO_TERM ;
 int OG_STR (int *,int ) ;
 int cl_setname (int *,char*) ;
 int * fgets (char*,int,int *) ;
 char* getenv (char*) ;
 int pclose (int *) ;
 int * popen (char*,char*) ;
 int snprintf (char*,int,char*,char*) ;
 char* strchr (char*,char) ;
 scalar_t__ strncmp (int ,char*,int) ;
 char* strndup (char*,int) ;
 char* strrchr (char*,char) ;

int
cl_rename(SCR *sp, char *name, int on)
{
 GS *gp;
 CL_PRIVATE *clp;
 FILE *pfp;
 char buf[256], *s, *e;
 char * wid;
 char cmd[64];

 gp = sp->gp;
 clp = CLP(sp);





 if (on) {
  clp->focus = sp;
  if (!F_ISSET(clp, CL_RENAME_OK) ||
      strncmp(OG_STR(gp, GO_TERM), "xterm", 5))
   return (0);

  if (clp->oname == ((void*)0) && (wid = getenv("WINDOWID"))) {
   snprintf(cmd, sizeof(cmd), "xprop -id %s WM_NAME", wid);
   if ((pfp = popen(cmd, "r")) == ((void*)0))
    goto rename;
   if (fgets(buf, sizeof(buf), pfp) == ((void*)0)) {
    pclose(pfp);
    goto rename;
   }
   pclose(pfp);
   if ((s = strchr(buf, '"')) != ((void*)0) &&
       (e = strrchr(buf, '"')) != ((void*)0))
    clp->oname = strndup(s + 1, e - s - 1);
  }

rename: cl_setname(gp, name);

  F_SET(clp, CL_RENAME);
 } else
  if (F_ISSET(clp, CL_RENAME)) {
   cl_setname(gp, clp->oname);

   F_CLR(clp, CL_RENAME);
  }
 return (0);
}
