
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int * STRNULL ;
 int STRdirsfile ;

 int * STRtildotdirs ;
 int bequiet ;
 int bequiet_cleanup ;
 int cleanup_push (int*,int ) ;
 int cleanup_until (int*) ;
 int dosource (int **,int *) ;
 int * varval (int ) ;

void
loaddirs(Char *fname)
{
    static Char *loaddirs_cmd[] = { 128, ((void*)0), ((void*)0) };

    bequiet = 1;
    cleanup_push(&bequiet, bequiet_cleanup);
    if (fname)
 loaddirs_cmd[1] = fname;
    else if ((fname = varval(STRdirsfile)) != STRNULL)
 loaddirs_cmd[1] = fname;
    else
 loaddirs_cmd[1] = STRtildotdirs;
    dosource(loaddirs_cmd, ((void*)0));
    cleanup_until(&bequiet);
}
