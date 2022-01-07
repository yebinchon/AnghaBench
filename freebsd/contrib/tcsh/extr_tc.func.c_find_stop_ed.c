
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct varent {int ** vec; } ;
struct process {scalar_t__ p_procid; scalar_t__ p_jobid; int p_flags; int p_command; struct process* p_next; } ;
struct TYPE_2__ {struct process* p_next; } ;
typedef int Char ;


 int PALLSTATES ;
 int PINTERRUPTED ;
 int PSIGNALED ;
 int PSTOPPED ;
 int STReditors ;
 struct varent* adrof (int ) ;
 scalar_t__ findvv (int **,char*) ;
 char* getenv (char*) ;
 int isspace (unsigned char) ;
 struct process* pcurrent ;
 struct process* pprevious ;
 TYPE_1__ proclist ;
 char* short2str (int ) ;
 scalar_t__ strncmp (char const*,char*,size_t) ;
 char* strrchr (char const*,char) ;

struct process *
find_stop_ed(void)
{
    struct process *pp, *retp;
    const char *ep = ((void*)0), *vp = ((void*)0);
    char *cp, *p;
    size_t epl = 0, vpl = 0;
    int pstatus;
    struct varent *varp;
    Char **vv;

    if (pcurrent == ((void*)0))
 return ((void*)0);

    if ((varp = adrof(STReditors)) != ((void*)0))
 vv = varp->vec;
    else
 vv = ((void*)0);

    if (! vv) {
 if ((ep = getenv("EDITOR")) != ((void*)0)) {
     if ((p = strrchr(ep, '/')) != ((void*)0))
  ep = p + 1;
 }
 else
     ep = "ed";

 if ((vp = getenv("VISUAL")) != ((void*)0)) {
     if ((p = strrchr(vp, '/')) != ((void*)0))
  vp = p + 1;
 }
 else
     vp = "vi";

 for (vpl = 0; vp[vpl] && !isspace((unsigned char)vp[vpl]); vpl++)
     continue;
 for (epl = 0; ep[epl] && !isspace((unsigned char)ep[epl]); epl++)
     continue;
    }

    retp = ((void*)0);
    for (pp = proclist.p_next; pp; pp = pp->p_next)
 if (pp->p_procid == pp->p_jobid) {






     pstatus = (int) (pp->p_flags & PALLSTATES);
     if (pstatus != PINTERRUPTED && pstatus != PSTOPPED &&
  pstatus != PSIGNALED)
  continue;

     p = short2str(pp->p_command);

     for (cp = p; *cp && !isspace((unsigned char) *cp); cp++)
  continue;
     *cp = '\0';

     if ((cp = strrchr(p, '/')) != ((void*)0))
  cp = cp + 1;
     else
  cp = p;





     if ((vv && findvv(vv, cp)) ||
         (epl && strncmp(ep, cp, epl) == 0 && cp[epl] == '\0') ||
  (vpl && strncmp(vp, cp, vpl) == 0 && cp[vpl] == '\0')) {





  if (pp == pcurrent)
      return pp;
  else if (retp == ((void*)0) || pp == pprevious)
      retp = pp;
     }
 }

    return retp;
}
