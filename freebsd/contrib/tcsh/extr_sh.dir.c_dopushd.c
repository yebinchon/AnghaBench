
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct directory {scalar_t__* di_name; struct directory* di_prev; struct directory* di_next; scalar_t__ di_count; } ;
struct command {int dummy; } ;
typedef scalar_t__ Char ;


 int DIR_OLD ;
 int ERR_CANTCHANGE ;
 int ERR_NAME ;
 int ERR_NODIR ;
 int ERR_NOHOMEDIR ;
 int ERR_SYSTEM ;
 int ERR_TOOMANY ;
 scalar_t__* STRNULL ;
 int STRdextract ;
 int STRhome ;
 int STRowd ;
 int STRpushdtohome ;
 int USE (struct command*) ;
 scalar_t__ adrof (int ) ;
 scalar_t__ chdir (char*) ;
 struct directory* dcwd ;
 int dextract (struct directory*) ;
 struct directory* dfind (scalar_t__*) ;
 scalar_t__* dfollow (scalar_t__*,int) ;
 struct directory dhead ;
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
dopushd(Char **v, struct command *c)
{
    struct directory *dp;
    Char *cp;
    int dflag = skipargs(&v, "plvn", " [-|<dir>|+<n>]");

    USE(c);
    printd = 1;
    cp = (dflag & DIR_OLD) ? varval(STRowd) : *v;

    if (cp == ((void*)0)) {
 if (adrof(STRpushdtohome)) {
     if ((cp = varval(STRhome)) == STRNULL || *cp == 0)
  stderror(ERR_NAME | ERR_NOHOMEDIR);
     if (chdir(short2str(cp)) < 0)
  stderror(ERR_NAME | ERR_CANTCHANGE);
     if ((cp = dfollow(cp, dflag & DIR_OLD)) == ((void*)0))
  return;
     dp = xcalloc(sizeof(struct directory), 1);
     dp->di_name = cp;
     dp->di_count = 0;
     dp->di_prev = dcwd;
     dp->di_next = dcwd->di_next;
     dcwd->di_next = dp;
     dp->di_next->di_prev = dp;
 }
 else {
     char *tmp;

     if ((dp = dcwd->di_prev) == &dhead)
  dp = dhead.di_prev;
     if (dp == dcwd)
  stderror(ERR_NAME | ERR_NODIR);
     if (chdir(tmp = short2str(dp->di_name)) < 0)
  stderror(ERR_SYSTEM, tmp, strerror(errno));
     dp->di_prev->di_next = dp->di_next;
     dp->di_next->di_prev = dp->di_prev;
     dp->di_next = dcwd->di_next;
     dp->di_prev = dcwd;
     dcwd->di_next->di_prev = dp;
     dcwd->di_next = dp;
 }
    }
    else if ((dflag & DIR_OLD) == 0 && v[1] != ((void*)0)) {
 stderror(ERR_NAME | ERR_TOOMANY);

 return;
    }
    else if ((dp = dfind(cp)) != ((void*)0)) {
 char *tmp;

 if (chdir(tmp = short2str(dp->di_name)) < 0)
     stderror(ERR_SYSTEM, tmp, strerror(errno));



 if (adrof(STRdextract))
     dextract(dp);
    }
    else {
 Char *ccp;

 if ((ccp = dfollow(cp, dflag & DIR_OLD)) == ((void*)0))
     return;
 dp = xcalloc(sizeof(struct directory), 1);
 dp->di_name = ccp;
 dp->di_count = 0;
 dp->di_prev = dcwd;
 dp->di_next = dcwd->di_next;
 dcwd->di_next = dp;
 dp->di_next->di_prev = dp;
    }
    dnewcwd(dp, dflag);
}
