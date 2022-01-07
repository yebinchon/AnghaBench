
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PIDGET (int ) ;
 int TIDGET (int ) ;
 int inferior_ptid ;

__attribute__((used)) static int
s390_inferior_tid (void)
{

  int tid = TIDGET (inferior_ptid);
  if (tid == 0)
    tid = PIDGET (inferior_ptid);

  return tid;
}
