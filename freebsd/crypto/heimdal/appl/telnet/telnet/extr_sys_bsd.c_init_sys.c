
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FD_ZERO (int *) ;
 scalar_t__ errno ;
 void* fileno (int ) ;
 int ibits ;
 int obits ;
 int stdin ;
 int stdout ;
 void* tin ;
 void* tout ;
 int xbits ;

void
init_sys(void)
{
    tout = fileno(stdout);
    tin = fileno(stdin);
    FD_ZERO(&ibits);
    FD_ZERO(&obits);
    FD_ZERO(&xbits);

    errno = 0;
}
