
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGABRT ;
 int getpid () ;
 int kill (int ,int ) ;

__attribute__((used)) static void
my_abort(void)
{

 kill(getpid(), SIGABRT);

}
