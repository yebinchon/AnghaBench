
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FORKEE_ASSERT_EQ (int,int ) ;
 int SIGINT ;
 int traceme2_caught ;

__attribute__((used)) static void
traceme2_sighandler(int sig)
{
 FORKEE_ASSERT_EQ(sig, SIGINT);

 ++traceme2_caught;
}
