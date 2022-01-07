
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clang ;

__attribute__((used)) static void
alrm_handler(int sig)
{

 (void)sig;
 clang = 1;
}
