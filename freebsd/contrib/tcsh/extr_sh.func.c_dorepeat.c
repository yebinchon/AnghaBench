
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command {int dummy; } ;
typedef int Char ;


 int STRrepeat ;
 scalar_t__ Strcmp (int *,int ) ;
 int cleanup_push (int*,int ) ;
 int cleanup_until (int*) ;
 int disabled_cleanup ;
 int donefds () ;
 int getn (int *) ;
 int lshift (int **,int) ;
 scalar_t__ noexec ;
 int pintr_disabled ;
 int reexecute (struct command*) ;
 scalar_t__ setintr ;

void
dorepeat(Char **v, struct command *kp)
{
    int i = 1;

    do {
 i *= getn(v[1]);
 lshift(v, 2);
    } while (v[0] != ((void*)0) && Strcmp(v[0], STRrepeat) == 0);
    if (noexec)
 i = 1;

    if (setintr) {
 pintr_disabled++;
 cleanup_push(&pintr_disabled, disabled_cleanup);
    }
    while (i > 0) {
 if (setintr && pintr_disabled == 1) {
     cleanup_until(&pintr_disabled);
     pintr_disabled++;
     cleanup_push(&pintr_disabled, disabled_cleanup);
 }
 reexecute(kp);
 --i;
    }
    if (setintr && pintr_disabled == 1)
        cleanup_until(&pintr_disabled);
    donefds();
}
