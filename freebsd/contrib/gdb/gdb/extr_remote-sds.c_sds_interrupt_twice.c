
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int interrupt_query () ;
 int ofunc ;
 int sds_interrupt ;
 int signal (int,int ) ;

__attribute__((used)) static void
sds_interrupt_twice (int signo)
{
  signal (signo, ofunc);

  interrupt_query ();

  signal (signo, sds_interrupt);
}
