
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WAITTYPE ;


 size_t FAULT_CODE_UNITS ;
 int PIDGET (int ) ;
 int WSETSTOP (int ,int ) ;
 size_t fault_code ;
 int * fault_table ;
 int inferior_ptid ;

int
wait (WAITTYPE *w)
{
  WSETSTOP (*w, fault_table[fault_code / FAULT_CODE_UNITS]);
  return PIDGET (inferior_ptid);
}
