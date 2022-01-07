
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RETSIGTYPE ;


 int SIGRETURN (int ) ;
 int WNOHANG ;
 scalar_t__ waitpid (int,int*,int ) ;

__attribute__((used)) static RETSIGTYPE
sigchld(int sig)
{
    int status;




    while ((waitpid(-1, &status, WNOHANG)) > 0)
 ;
    SIGRETURN(0);
}
