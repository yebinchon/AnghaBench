
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* fd_map; } ;


 int remote_fileio_next_free_fd () ;
 TYPE_1__ remote_fio_data ;

__attribute__((used)) static int
remote_fileio_fd_to_targetfd (int fd)
{
  int target_fd = remote_fileio_next_free_fd ();
  remote_fio_data.fd_map[target_fd] = fd;
  return target_fd;
}
