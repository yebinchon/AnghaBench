
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct directory {struct directory* di_prev; struct directory* di_next; int di_name; } ;
struct command {int dummy; } ;
typedef int Char ;


 int DIR_OLD ;
 int ERR_BADDIR ;
 int ERR_EMPTY ;
 int ERR_NAME ;
 int ERR_SYSTEM ;
 int ERR_TOOMANY ;
 int STRowd ;
 int USE (struct command*) ;
 scalar_t__ chdir (char*) ;
 struct directory* dcwd ;
 struct directory* dfind (int *) ;
 int dfree (struct directory*) ;
 struct directory dhead ;
 int dnewcwd (struct directory*,int) ;
 int errno ;
 int printd ;
 int printdirs (int) ;
 char* short2str (int ) ;
 int skipargs (int ***,char*,char*) ;
 int stderror (int,...) ;
 int strerror (int ) ;
 int * varval (int ) ;

void
dopopd(Char **v, struct command *c)
{
    Char *cp;
    struct directory *dp, *p = ((void*)0);
    int dflag = skipargs(&v, "plvn", " [-|+<n>]");

    USE(c);
    printd = 1;
    cp = (dflag & DIR_OLD) ? varval(STRowd) : *v;

    if (cp == ((void*)0))
 dp = dcwd;
    else if ((dflag & DIR_OLD) == 0 && v[1] != ((void*)0)) {
 stderror(ERR_NAME | ERR_TOOMANY);

 return;
    }
    else if ((dp = dfind(cp)) == 0)
 stderror(ERR_NAME | ERR_BADDIR);
    if (dp->di_prev == &dhead && dp->di_next == &dhead)
 stderror(ERR_NAME | ERR_EMPTY);
    if (dp == dcwd) {
 char *tmp;

 if ((p = dp->di_prev) == &dhead)
     p = dhead.di_prev;
 if (chdir(tmp = short2str(p->di_name)) < 0)
     stderror(ERR_SYSTEM, tmp, strerror(errno));
    }
    dp->di_prev->di_next = dp->di_next;
    dp->di_next->di_prev = dp->di_prev;
    dfree(dp);
    if (dp == dcwd) {
        dnewcwd(p, dflag);
    }
    else {
 printdirs(dflag);
    }
}
