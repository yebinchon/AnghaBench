
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command {int dummy; } ;
typedef int Char ;


 int ERR_HFLAG ;
 int ERR_MFLAG ;
 int ERR_NAME ;
 int ERR_SYSTEM ;
 int G_ERROR ;
 int STRmh ;
 int STRmm ;
 int USE (struct command*) ;
 int bequiet ;
 int blk_cleanup ;
 int cleanup_push (char*,int (*) (int *)) ;
 int cleanup_until (char*) ;
 scalar_t__ eq (int *,int ) ;
 int errno ;
 int ** glob_all_or_error (int **) ;
 int * globone (int ,int ) ;
 int short2str (int *) ;
 int srcfile (char*,int ,int,int **) ;
 int stderror (int,...) ;
 int strerror (int ) ;
 char* strsave (int ) ;
 int xfree (int *) ;

void
dosource(Char **t, struct command *c)
{
    Char *f;
    int hflg = 0;
    char *file;

    USE(c);
    t++;
    if (*t && eq(*t, STRmh)) {
 if (*++t == ((void*)0))
     stderror(ERR_NAME | ERR_HFLAG);
 hflg++;
    }
    else if (*t && eq(*t, STRmm)) {
     if (*++t == ((void*)0))
     stderror(ERR_NAME | ERR_MFLAG);
 hflg = 2;
    }

    f = globone(*t++, G_ERROR);
    file = strsave(short2str(f));
    cleanup_push(file, xfree);
    xfree(f);
    t = glob_all_or_error(t);
    cleanup_push(t, blk_cleanup);
    if ((!srcfile(file, 0, hflg, t)) && (!hflg) && (!bequiet))
 stderror(ERR_SYSTEM, file, strerror(errno));
    cleanup_until(file);
}
