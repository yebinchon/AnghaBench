
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd_map_size; int * fd_map; } ;


 int FIO_FD_INVALID ;
 int remote_fileio_init_fd_map () ;
 TYPE_1__ remote_fio_data ;

__attribute__((used)) static void
remote_fileio_close_target_fd (int target_fd)
{
  remote_fileio_init_fd_map ();
  if (target_fd >= 0 && target_fd < remote_fio_data.fd_map_size)
    remote_fio_data.fd_map[target_fd] = FIO_FD_INVALID;
}
