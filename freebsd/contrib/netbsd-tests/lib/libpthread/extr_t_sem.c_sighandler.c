
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATF_REQUIRE_EQ_MSG (int,int ,char*) ;
 int SEM_REQUIRE (int ) ;
 int SIGALRM ;
 int sem ;
 int sem_post (int *) ;

__attribute__((used)) static void
sighandler(int signo)
{


 ATF_REQUIRE_EQ_MSG(signo, SIGALRM, "unexpected signal");
 SEM_REQUIRE(sem_post(&sem));
}
