
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGUSR1 ;
 int assert (int) ;
 int tcount ;

__attribute__((used)) static void
sigcount(int sig)
{

 assert(sig == SIGUSR1);
 tcount++;
}
