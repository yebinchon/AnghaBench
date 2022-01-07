
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RETSIGTYPE ;


 int SIGRETURN (int ) ;
 int sig_alarm ;

__attribute__((used)) static RETSIGTYPE
sigtimeout(int sig)
{
    sig_alarm = 1;
    SIGRETURN(0);
}
