
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RL (int ) ;
 int file_fd ;
 int rump_sys_close (int ) ;

__attribute__((used)) static void
close_file(const char *unused)
{

 RL(rump_sys_close(file_fd));
}
