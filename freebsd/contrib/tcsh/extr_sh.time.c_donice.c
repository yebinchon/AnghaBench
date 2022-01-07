
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command {int dummy; } ;
typedef int Char ;


 int ERR_SYSTEM ;
 int PRIO_PROCESS ;
 int USE (struct command*) ;
 scalar_t__ any (char*,int ) ;
 scalar_t__ errno ;
 int getn (int *) ;
 int nice (int) ;
 int setpriority (int ,int ,int) ;
 int stderror (int ,char*,int ) ;
 int strerror (scalar_t__) ;

void
donice(Char **v, struct command *c)
{
    Char *cp;
    int nval = 0;

    USE(c);
    v++, cp = *v++;
    if (cp == 0)
 nval = 4;
    else if (*v == 0 && any("+-", cp[0]))
 nval = getn(cp);




    (void) nice(nval);

}
