
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int signal (int,void (*) (int)) ;

__attribute__((used)) static void
do_nothing (int signo)
{






  signal (signo, do_nothing);
}
