
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fail ;
 int sleep (int) ;

__attribute__((used)) static void
handler_ret(int signo)
{

 (void)sleep(1);

 fail = 0;
}
