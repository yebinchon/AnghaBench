
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command {int t_dcom; } ;
typedef int Char ;


 int ERR_EMPTYIF ;
 int ERR_IMPRTHEN ;
 int ERR_NAME ;
 int STRthen ;
 int TC_IF ;
 int donefds () ;
 scalar_t__ eq (int *,int ) ;
 int expr (int ***) ;
 int lshift (int,int **) ;
 scalar_t__ noexec ;
 int reexecute (struct command*) ;
 int search (int ,int ,int *) ;
 int setname (int ) ;
 int short2str (int ) ;
 int stderror (int) ;

void
doif(Char **v, struct command *kp)
{
    int i;
    Char **vv;

    v++;
    i = noexec ? 1 : expr(&v);
    vv = v;
    if (*vv == ((void*)0))
 stderror(ERR_NAME | ERR_EMPTYIF);
    if (eq(*vv, STRthen)) {
 if (*++vv)
     stderror(ERR_NAME | ERR_IMPRTHEN);
 setname(short2str(STRthen));




 if (!i)
     search(TC_IF, 0, ((void*)0));
 return;
    }




    if (i) {
 lshift(kp->t_dcom, vv - kp->t_dcom);
 reexecute(kp);
 donefds();
    }
}
