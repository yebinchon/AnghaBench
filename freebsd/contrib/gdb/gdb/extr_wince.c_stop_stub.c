
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GDB_STOPSTUB ;
 int putdword (char*,int ,int ) ;
 int s ;

__attribute__((used)) static void
stop_stub (void)
{
  if (s < 0)
    return;
  (void) putdword ("Stopping gdb stub", GDB_STOPSTUB, 0);
  s = -1;
}
