
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * command ;
typedef int Char ;


 int SIGTERM ;
 int STRsavehist ;
 int USE (int **) ;
 int _PATH_BIN_LOGIN ;
 int _PATH_USRBIN_LOGIN ;
 int * adrof (int ) ;
 int blk_cleanup ;
 int cleanup_push (int **,int ) ;
 int cleanup_until (int **) ;
 int execv (int ,char**) ;
 int islogin () ;
 int parterm ;
 int rechist (int *,int ) ;
 char** short2blk (int **) ;
 int sigaction (int ,int *,int *) ;
 int untty () ;
 int xexit (int) ;

void
dologin(Char **v, struct command *c)
{




    char **p = short2blk(v);

    USE(c);
    cleanup_push((Char **)p, blk_cleanup);
    islogin();
    rechist(((void*)0), adrof(STRsavehist) != ((void*)0));
    sigaction(SIGTERM, &parterm, ((void*)0));
    (void) execv(_PATH_BIN_LOGIN, p);
    (void) execv(_PATH_USRBIN_LOGIN, p);
    cleanup_until((Char **)p);
    untty();
    xexit(1);

}
