
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct directory {scalar_t__* di_name; struct directory* di_prev; struct directory* di_next; scalar_t__ di_count; } ;
struct command {int dummy; } ;
struct TYPE_3__ {struct directory* di_prev; struct directory* di_next; } ;
typedef scalar_t__ Char ;


 int DIR_OLD ;
 int ERR_CANTCHANGE ;
 int ERR_NAME ;
 int ERR_NOHOMEDIR ;
 int ERR_SYSTEM ;
 int ERR_TOOFEW ;
 int ERR_TOOMANY ;
 scalar_t__* STRNULL ;
 int STRhome ;
 int STRowd ;
 scalar_t__* Strsave (scalar_t__*) ;
 int USE (struct command*) ;
 int cdtohome ;
 scalar_t__ chdir (char*) ;
 TYPE_1__* dcwd ;
 struct directory* dfind (scalar_t__*) ;
 scalar_t__* dfollow (scalar_t__*,int) ;
 int dfree (TYPE_1__*) ;
 int dnewcwd (struct directory*,int) ;
 int errno ;
 int printd ;
 char* short2str (scalar_t__*) ;
 int skipargs (scalar_t__***,char*,char*) ;
 int stderror (int,...) ;
 int strerror (int ) ;
 scalar_t__* varval (int ) ;
 struct directory* xcalloc (int,int) ;

void
dochngd(Char **v, struct command *c)
{
    Char *cp;
    struct directory *dp;
    int dflag = skipargs(&v, "plvn", "[-|<dir>]");

    USE(c);
    printd = 0;
    cp = (dflag & DIR_OLD) ? varval(STRowd) : *v;

    if (cp == ((void*)0)) {
 if (!cdtohome)
     stderror(ERR_NAME | ERR_TOOFEW);
 else if ((cp = varval(STRhome)) == STRNULL || *cp == 0)
     stderror(ERR_NAME | ERR_NOHOMEDIR);
 if (chdir(short2str(cp)) < 0)
     stderror(ERR_NAME | ERR_CANTCHANGE);
 cp = Strsave(cp);
    }
    else if ((dflag & DIR_OLD) == 0 && v[1] != ((void*)0)) {
 stderror(ERR_NAME | ERR_TOOMANY);

 return;
    }
    else if ((dp = dfind(cp)) != 0) {
 char *tmp;

 printd = 1;
 if (chdir(tmp = short2str(dp->di_name)) < 0)
     stderror(ERR_SYSTEM, tmp, strerror(errno));
 dcwd->di_prev->di_next = dcwd->di_next;
 dcwd->di_next->di_prev = dcwd->di_prev;
 dfree(dcwd);
 dnewcwd(dp, dflag);
 return;
    }
    else
 if ((cp = dfollow(cp, dflag & DIR_OLD)) == ((void*)0))
     return;
    dp = xcalloc(sizeof(struct directory), 1);
    dp->di_name = cp;
    dp->di_count = 0;
    dp->di_next = dcwd->di_next;
    dp->di_prev = dcwd->di_prev;
    dp->di_prev->di_next = dp;
    dp->di_next->di_prev = dp;
    dfree(dcwd);
    dnewcwd(dp, dflag);
}
