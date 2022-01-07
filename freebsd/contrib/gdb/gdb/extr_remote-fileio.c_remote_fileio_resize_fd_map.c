
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* fd_map; int fd_map_size; } ;


 int remote_fileio_init_fd_map () ;
 TYPE_1__ remote_fio_data ;
 scalar_t__ xrealloc (int*,int) ;

__attribute__((used)) static int
remote_fileio_resize_fd_map (void)
{
  if (!remote_fio_data.fd_map)
    return remote_fileio_init_fd_map ();
  remote_fio_data.fd_map_size += 10;
  remote_fio_data.fd_map =
    (int *) xrealloc (remote_fio_data.fd_map,
        remote_fio_data.fd_map_size * sizeof (int));
  return remote_fio_data.fd_map_size - 10;
}
