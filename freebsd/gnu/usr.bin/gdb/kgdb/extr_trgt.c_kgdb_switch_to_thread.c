
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int error (char*) ;
 int gdb_thread_select (int ,char*) ;
 int pid_to_ptid (int) ;
 int pid_to_thread_id (int ) ;
 int snprintf (char*,int,char*,int) ;
 int uiout ;

__attribute__((used)) static void
kgdb_switch_to_thread(int tid)
{
 char buf[16];
 int thread_id;

 thread_id = pid_to_thread_id(pid_to_ptid(tid));
 if (thread_id == 0)
  error ("invalid tid");
 snprintf(buf, sizeof(buf), "%d", thread_id);
 gdb_thread_select(uiout, buf);
}
