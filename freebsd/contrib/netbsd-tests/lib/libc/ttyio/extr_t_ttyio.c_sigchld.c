
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REQUIRE_ERRNO (int ,int) ;
 int wait (int *) ;

__attribute__((used)) static void
sigchld(int nsig)
{
 REQUIRE_ERRNO(wait(((void*)0)), -1);
}
