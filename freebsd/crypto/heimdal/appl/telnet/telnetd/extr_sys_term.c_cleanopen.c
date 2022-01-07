
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_NOCTTY ;
 int O_RDWR ;
 int SIGHUP ;
 int SIG_DFL ;
 int SIG_IGN ;
 int TCVHUP ;
 int chmod (char*,int) ;
 int chown (char*,int ,int ) ;
 int close (int) ;
 int ioctl (int,int ,char*) ;
 int open (char*,int) ;
 int ptyslavefd ;
 int really_stream ;
 int revoke (char*) ;
 int signal (int ,int ) ;
 int vhangup () ;

int cleanopen(char *line)
{
    int t;

    if (ptyslavefd != -1)
 return ptyslavefd;




 {




     chown(line, 0, 0);
     chmod(line, 0600);
 }





    t = open(line, O_RDWR|O_NOCTTY);

    if (t < 0)
 return(-1);






    signal(SIGHUP, SIG_IGN);




    signal(SIGHUP, SIG_DFL);
    t = open(line, O_RDWR|O_NOCTTY);
    if (t < 0)
 return(-1);
    return(t);
}
