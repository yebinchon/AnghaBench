
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDWR ;
 int TIOCSCTTY ;
 int close (int) ;
 int dup2 (int,int) ;
 int fatalperror (int ,char*) ;
 scalar_t__ ioctl (int,int ,char*) ;
 char* line ;
 int net ;
 int open (char*,int ) ;
 int really_stream ;
 int setpgid (int ,int ) ;
 int setpgrp (int ,int ) ;

int login_tty(int t)
{
    setpgrp(0, 0);


    close(open(line, O_RDWR));

    if (t != 0)
 dup2(t, 0);
    if (t != 1)
 dup2(t, 1);
    if (t != 2)
 dup2(t, 2);
    if (t > 2)
 close(t);
    return(0);
}
