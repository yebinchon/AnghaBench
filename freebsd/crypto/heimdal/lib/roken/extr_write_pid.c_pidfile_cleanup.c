
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pid_file_delete (int **) ;
 int * pidfile_path ;

__attribute__((used)) static void
pidfile_cleanup(void)
{
    if(pidfile_path != ((void*)0))
 pid_file_delete(&pidfile_path);
}
