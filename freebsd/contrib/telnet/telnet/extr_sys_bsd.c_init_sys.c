
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ errno ;
 void* fileno (int ) ;
 int stdin ;
 int stdout ;
 void* tin ;
 void* tout ;

void
init_sys(void)
{
    tout = fileno(stdout);
    tin = fileno(stdin);
    errno = 0;
}
