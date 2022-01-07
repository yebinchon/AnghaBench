
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptid_t ;


 int PIDGET (int ) ;
 int sprintf (char*,char*,int) ;

char *
normal_pid_to_str (ptid_t ptid)
{
  static char buf[30];

  sprintf (buf, "process %d", PIDGET (ptid));
  return buf;
}
