
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RETSIGTYPE ;


 int SIGSYS ;
 int catch_SIGSYS ;
 scalar_t__ errno ;
 int longjmp (int ,int) ;
 int signal (int ,int (*) (int)) ;

__attribute__((used)) static RETSIGTYPE
SIGSYS_handler(int sig)
{
    errno = 0;
    signal(SIGSYS, SIGSYS_handler);
    longjmp(catch_SIGSYS, 1);
}
