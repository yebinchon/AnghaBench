
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _exit (int) ;
 int cleanup_socket () ;
 int getppid () ;
 int parent_pid ;

__attribute__((used)) static void
check_parent_exists(void)
{




 if (parent_pid != -1 && getppid() != parent_pid) {

  cleanup_socket();
  _exit(2);
 }
}
