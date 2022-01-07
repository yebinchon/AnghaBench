
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gdb_breakpoint_query (int ,int) ;
 int uiout ;

__attribute__((used)) static void
breakpoint_notify (int b)
{
  gdb_breakpoint_query (uiout, b);
}
