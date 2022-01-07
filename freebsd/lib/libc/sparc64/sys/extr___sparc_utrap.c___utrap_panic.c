
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGKILL ;
 int __utrap_kill_self (int ) ;
 int __utrap_write (char const*) ;

void
__utrap_panic(const char *msg)
{

 __utrap_write(msg);
 __utrap_write("\n");
 __utrap_kill_self(SIGKILL);
}
