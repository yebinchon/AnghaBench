
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TerminalWindowSize (long*,long*) ;
 int _exit (int) ;
 int connected ;
 int execl (char*,char*,char*,...) ;
 int fork () ;
 char* getenv (char*) ;
 int perror (char*) ;
 int * saveline ;
 int sendnaws () ;
 int setcommandmode () ;
 char* strrchr (char*,char) ;
 int wait (int*) ;

__attribute__((used)) static int
shell(int argc, char **argv)
{
    long oldrows, oldcols, newrows, newcols, err;

    setcommandmode();

    err = (TerminalWindowSize(&oldrows, &oldcols) == 0) ? 1 : 0;
    switch(fork()) {
    case -1:
 perror("Fork failed\r\n");
 break;

    case 0:
 {



     char *shellp, *shellname;

     shellp = getenv("SHELL");
     if (shellp == ((void*)0))
  shellp = "/bin/sh";
     if ((shellname = strrchr(shellp, '/')) == 0)
  shellname = shellp;
     else
  shellname++;
     if (argc > 1)
  execl(shellp, shellname, "-c", &saveline[1], ((void*)0));
     else
  execl(shellp, shellname, ((void*)0));
     perror("Execl");
     _exit(1);
 }
    default:
     wait((int *)0);

     if (TerminalWindowSize(&newrows, &newcols) && connected &&
  (err || ((oldrows != newrows) || (oldcols != newcols)))) {
      sendnaws();
     }
     break;
    }
    return 1;
}
