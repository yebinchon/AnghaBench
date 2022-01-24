#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int* fd_map; int fd_map_size; } ;

/* Variables and functions */
 int FUNC0 () ; 
 TYPE_1__ remote_fio_data ; 
 scalar_t__ FUNC1 (int*,int) ; 

__attribute__((used)) static int
FUNC2 (void)
{
  if (!remote_fio_data.fd_map)
    return FUNC0 ();
  remote_fio_data.fd_map_size += 10;
  remote_fio_data.fd_map =
    (int *) FUNC1 (remote_fio_data.fd_map,
		      remote_fio_data.fd_map_size * sizeof (int));
  return remote_fio_data.fd_map_size - 10;
}