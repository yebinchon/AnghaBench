
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Cookedmode () ;
 int FALSE ;
 int GettingInput ;
 int SHIN ;
 int STRautomatic ;
 int STRlogout ;
 int VAR_READWRITE ;
 int child ;
 int do_logout ;
 scalar_t__ editing ;
 int goodbye (int *,int *) ;
 int setcopy (int ,int ,int ) ;
 int xclose (int ) ;
 int xprintf (char*) ;

__attribute__((used)) static void
auto_logout(void)
{
    xprintf("auto-logout\n");

    if (editing)
 (void) Cookedmode();
    xclose(SHIN);
    setcopy(STRlogout, STRautomatic, VAR_READWRITE);
    child = 1;



    GettingInput = FALSE;
    goodbye(((void*)0), ((void*)0));
}
