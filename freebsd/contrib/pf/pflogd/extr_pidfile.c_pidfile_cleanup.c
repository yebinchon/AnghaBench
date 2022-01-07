
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ getpid () ;
 int * pidfile_path ;
 scalar_t__ pidfile_pid ;
 int unlink (int *) ;

__attribute__((used)) static void
pidfile_cleanup(void)
{

 if (pidfile_path != ((void*)0) && pidfile_pid == getpid())
  (void) unlink(pidfile_path);
}
