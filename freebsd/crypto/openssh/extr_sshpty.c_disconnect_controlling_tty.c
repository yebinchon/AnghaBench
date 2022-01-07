
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_NOCTTY ;
 int O_RDWR ;
 int TIOCNOTTY ;
 int _PATH_TTY ;
 int close (int) ;
 int ioctl (int,int ,int *) ;
 int open (int ,int) ;

void
disconnect_controlling_tty(void)
{
}
