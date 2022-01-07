
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {int hq; int dq; } ;
struct TYPE_15__ {TYPE_2__* gp; } ;
typedef TYPE_1__ SCR ;
typedef TYPE_2__ GS ;
typedef int CHAR_T ;


 int INT2CHAR (TYPE_1__*,int *,scalar_t__,char*,size_t) ;
 int M_ERR ;
 scalar_t__ STRLEN (int *) ;
 int TAILQ_INSERT_TAIL (int ,TYPE_1__*,int ) ;
 int TAILQ_REMOVE (int ,TYPE_1__*,int ) ;
 int msgq_wstr (TYPE_1__*,int ,int *,char*) ;
 int q ;
 TYPE_1__* vs_getbg (TYPE_1__*,char*) ;
 scalar_t__ vs_split (TYPE_1__*,TYPE_1__*,int ) ;
 scalar_t__ vs_swap (TYPE_1__*,TYPE_1__**,char*) ;

int
vs_fg(SCR *sp, SCR **nspp, CHAR_T *name, int newscreen)
{
 GS *gp;
 SCR *nsp;
 char *np;
 size_t nlen;

 gp = sp->gp;

 if (name)
     INT2CHAR(sp, name, STRLEN(name) + 1, np, nlen);
 else
     np = ((void*)0);
 if (newscreen)

  nsp = vs_getbg(sp, np);
 else

  if (vs_swap(sp, &nsp, np))
   return (1);

 if ((*nspp = nsp) == ((void*)0)) {
  msgq_wstr(sp, M_ERR, name,
      name == ((void*)0) ?
      "223|There are no background screens" :
      "224|There's no background screen editing a file named %s");
  return (1);
 }

 if (newscreen) {

  TAILQ_REMOVE(gp->hq, nsp, q);


  if (vs_split(sp, nsp, 0)) {
   TAILQ_INSERT_TAIL(gp->hq, nsp, q);
   return (1);
  }
 } else {

  TAILQ_REMOVE(gp->dq, sp, q);
  TAILQ_INSERT_TAIL(gp->hq, sp, q);
 }
 return (0);
}
