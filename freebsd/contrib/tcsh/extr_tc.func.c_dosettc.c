
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command {int dummy; } ;
typedef int Char ;


 int GetTermCaps () ;
 int GotTermCaps ;
 int SetTC (char*,char*) ;
 int USE (struct command*) ;
 int cleanup_push (char*,int ) ;
 int cleanup_until (char*) ;
 int short2str (int *) ;
 char* strsave (int ) ;
 int xfree ;

void
dosettc(Char **v, struct command *c)
{
    char *tv[2];

    USE(c);
    if (!GotTermCaps)
 GetTermCaps();

    tv[0] = strsave(short2str(v[1]));
    cleanup_push(tv[0], xfree);
    tv[1] = strsave(short2str(v[2]));
    cleanup_push(tv[1], xfree);
    SetTC(tv[0], tv[1]);
    cleanup_until(tv[0]);
}
