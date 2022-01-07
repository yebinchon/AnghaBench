
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int nd_cleanup () ;

__attribute__((used)) static void
exit_tcpdump(int status)
{
 nd_cleanup();
 exit(status);
}
