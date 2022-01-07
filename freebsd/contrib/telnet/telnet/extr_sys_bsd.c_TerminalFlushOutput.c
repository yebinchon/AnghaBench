
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TCFLSH ;
 int TIOCFLUSH ;
 int fileno (int ) ;
 int ioctl (int ,int ,char*) ;
 int stdout ;

void
TerminalFlushOutput(void)
{



    (void) ioctl(fileno(stdout), TCFLSH, (char *) 0);

}
