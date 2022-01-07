
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEBUG_EVENTS (char*) ;
 int PIDGET (int ) ;
 int inferior_ptid ;

__attribute__((used)) static void
child_close (void)
{
  DEBUG_EVENTS (("gdb: child_close, inferior_ptid=%d\n",
                PIDGET (inferior_ptid)));
}
