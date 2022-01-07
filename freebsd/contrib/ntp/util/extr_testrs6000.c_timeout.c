
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sigcontext {int dummy; } ;
struct TYPE_3__ {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;


 int SIGALRM ;
 scalar_t__ adjtime (int *,TYPE_1__*) ;
 int adjustment ;
 int printf (char*,...) ;
 TYPE_1__ result ;
 int signal (int ,int (*) (int,int,struct sigcontext*)) ;

int
timeout(
 int sig,
 int code,
 struct sigcontext *scp
 )
{
 signal (SIGALRM, timeout);
 if (adjtime(&adjustment, &result))
     printf("adjtime call failed\n");
 if (result.tv_sec != 0 || result.tv_usec != 0) {
  printf("result.u = %d.%06.6d  ", (int) result.tv_sec,
         (int) result.tv_usec);
 }
}
