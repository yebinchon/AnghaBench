
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sio_offset; } ;
typedef TYPE_1__ scan_io_t ;



__attribute__((used)) static int
io_addr_compare(const void *x, const void *y)
{
 const scan_io_t *a = x, *b = y;

 if (a->sio_offset < b->sio_offset)
  return (-1);
 if (a->sio_offset == b->sio_offset)
  return (0);
 return (1);
}
